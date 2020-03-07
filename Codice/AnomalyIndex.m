%Anomaly index
function anomaly=AnomalyIndex(membershipList)
    anomaly=-(1/log2(length(membershipList))).*(sum(membershipList.*log2(membershipList)));
end