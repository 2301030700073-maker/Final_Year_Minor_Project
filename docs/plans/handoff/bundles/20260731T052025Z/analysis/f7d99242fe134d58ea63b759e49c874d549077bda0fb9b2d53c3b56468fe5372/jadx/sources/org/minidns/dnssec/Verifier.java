package org.minidns.dnssec;

import org.minidns.dnsname.DnsName;
import org.minidns.dnssec.algorithms.AlgorithmMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Verifier {
    public static final AlgorithmMap algorithmMap = AlgorithmMap.INSTANCE;

    public static boolean nsecMatches(DnsName dnsName, DnsName dnsName2, DnsName dnsName3) {
        int labelCount = dnsName2.getLabelCount();
        int labelCount2 = dnsName3.getLabelCount();
        int labelCount3 = dnsName.getLabelCount();
        String str = dnsName.ace;
        if (labelCount3 > labelCount && !dnsName.isChildOf(dnsName2) && dnsName.stripToLabels(labelCount).ace.compareTo(dnsName2.ace) < 0) {
            return false;
        }
        if (labelCount3 <= labelCount && str.compareTo(dnsName2.stripToLabels(labelCount3).ace) < 0) {
            return false;
        }
        if (labelCount3 <= labelCount2 || dnsName.isChildOf(dnsName3) || dnsName.stripToLabels(labelCount2).ace.compareTo(dnsName3.ace) <= 0) {
            return labelCount3 > labelCount2 || str.compareTo(dnsName3.stripToLabels(labelCount3).ace) < 0;
        }
        return false;
    }
}
