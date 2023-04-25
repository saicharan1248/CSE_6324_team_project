pragma solidity 0.8.16;
error ProjectNotFound(uint256 projectId);
contract Crowdfunding {
    struct Project {
        uint256 id;
        string name;
        uint256 goal;
        uint256 deadline;
        uint256 raised;
    }

    Project[] private _projects;

    function getProject(uint256 projectId) public view returns (Project memory) {
        for (uint256 i = 0; i < _projects.length; i++) {
            if (_projects[i].id == projectId) {
                return _projects[i];
            }
        }
        revert ProjectNotFound(projectId);
    }
}
