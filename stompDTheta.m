% dtheta: estimated gradient
% em: 1 by nJoints cell, each cell is nSamples by nDiscretize matrix
function dtheta = stompDTheta(trajProb, em)

nJoints = length(em);
nDiscretize = size(trajProb, 2);
% variable declaration
dtheta = zeros(nJoints, nDiscretize);

%% TODO: iterate over all joints to compute dtheta: (complete your code according to the STOMP algorithm)
% Use the formula: dtheta = sum(em .* trajProb, 1) / sum(trajProb, 1)
% Iterate over all joints
for i = 1 : nJoints
    % Get the em and trajProb matrices for the ith joint
    em_i = em{i};
    trajProb_i = trajProb(i,:);
    % Compute the dtheta for the ith joint
    dtheta(i,:) = sum(em_i .* trajProb_i, 1) / sum(trajProb_i, 1);
end
