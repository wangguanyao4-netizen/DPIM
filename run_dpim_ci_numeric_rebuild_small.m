function outputs = run_dpim_ci_numeric_rebuild_small(runMode)
%run_dpim_ci_numeric_rebuild_small Build DPIM CI reports and small experiment outputs.
% Syntax:
%   outputs = run_dpim_ci_numeric_rebuild_small()
%   outputs = run_dpim_ci_numeric_rebuild_small("small")
%
% This entry point is intentionally scoped to the small configuration. It
% builds code inventories, writes the locked nonlinear-model JSON, and
% generates standardized results/E1--E8 bundles. It does not run any full
% paper-scale experiment.

if nargin < 1 || strlength(string(runMode)) == 0
    runMode = "small";
end

runMode = lower(string(runMode));
if runMode ~= "small"
    error("Only runMode='small' is implemented in this rebuild wrapper. Full runs require separate approval.");
end

outputs = run_dpim_ci_numeric_rebuild("small");
end
