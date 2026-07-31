package org.minidns.dnssec;

import j$.util.concurrent.ConcurrentHashMap;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.minidns.cache.LruCache;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.edns.Edns;
import org.minidns.iterative.ReliableDnsClient;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DnssecClient extends ReliableDnsClient {
    public static final BigInteger rootEntryKey = new BigInteger("1628686155461064465348252249725010996177649738666492500572664444461532807739744536029771810659241049343994038053541290419968870563183856865780916376571550372513476957870843322273120879361960335192976656756972171258658400305760429696147778001233984421619267530978084631948434496468785021389956803104620471232008587410372348519229650742022804219634190734272506220018657920136902014393834092648785514548876370028925405557661759399901378816916683122474038734912535425670533237815676134840739565610963796427401855723026687073600445461090736240030247906095053875491225879656640052743394090544036297390104110989318819106653199917493");
    public final ConcurrentHashMap knownSeps;
    public final boolean stripSignatureRecords;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class VerifySignaturesResult {
        public HashSet reasons;
        public boolean sepSignaturePresent;
        public boolean sepSignatureRequired;
    }

    static {
        DnsName.from("dlv.isc.org");
    }

    public DnssecClient(LruCache lruCache) {
        super(lruCache);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.knownSeps = concurrentHashMap;
        this.stripSignatureRecords = true;
        concurrentHashMap.put(DnsName.ROOT, rootEntryKey.toByteArray());
    }

    public static List stripSignatureRecords(List list) {
        if (list.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Record record = (Record) it.next();
            if (record.type != Record.TYPE.RRSIG) {
                arrayList.add(record);
            }
        }
        return arrayList;
    }

    @Override // org.minidns.iterative.ReliableDnsClient
    public final String isResponseAcceptable(DnsMessage dnsMessage) {
        Edns edns = dnsMessage.edns;
        if (edns == null) {
            int i = dnsMessage.optRrPosition;
            Record record = i == -1 ? null : (Record) dnsMessage.additionalSection.get(i);
            if (record == null) {
                edns = null;
            } else {
                Edns edns2 = new Edns(record);
                dnsMessage.edns = edns2;
                edns = edns2;
            }
        }
        if (!(edns == null ? false : edns.dnssecOk)) {
            return "DNSSEC OK (DO) flag not set in response";
        }
        if (dnsMessage.checkingDisabled) {
            return null;
        }
        return "CHECKING DISABLED (CD) flag not set in response";
    }

    @Override // org.minidns.iterative.ReliableDnsClient, org.minidns.AbstractDnsClient
    public final DnsMessage.Builder newQuestion(DnsMessage.Builder builder) {
        if (builder.ednsBuilder == null) {
            builder.ednsBuilder = new Edns.Builder();
        }
        Edns.Builder builder2 = builder.ednsBuilder;
        this.dataSource.getClass();
        builder2.udpPayloadSize = 1232;
        builder2.dnssecOk = true;
        builder.checkingDisabled = true;
        return builder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0245  */
    /* JADX WARN: Type inference failed for: r18v3, types: [java.util.Set] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.jsoup.internal.SoftPool queryDnssec(org.minidns.dnsmessage.Question r27) {
        /*
            Method dump skipped, instructions count: 1245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.dnssec.DnssecClient.queryDnssec(org.minidns.dnsmessage.Question):org.jsoup.internal.SoftPool");
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0225 A[Catch: IOException -> 0x0202, LOOP:6: B:111:0x021f->B:113:0x0225, LOOP_END, TryCatch #2 {IOException -> 0x0202, blocks: (B:102:0x01b2, B:104:0x01cc, B:106:0x01d2, B:108:0x01d8, B:110:0x0212, B:111:0x021f, B:113:0x0225, B:115:0x024c, B:116:0x0260, B:118:0x0266, B:120:0x0270, B:141:0x020a, B:142:0x0211), top: B:101:0x01b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0266 A[Catch: IOException -> 0x0202, LOOP:7: B:116:0x0260->B:118:0x0266, LOOP_END, TryCatch #2 {IOException -> 0x0202, blocks: (B:102:0x01b2, B:104:0x01cc, B:106:0x01d2, B:108:0x01d8, B:110:0x0212, B:111:0x021f, B:113:0x0225, B:115:0x024c, B:116:0x0260, B:118:0x0266, B:120:0x0270, B:141:0x020a, B:142:0x0211), top: B:101:0x01b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0345 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.minidns.dnssec.DnssecClient.VerifySignaturesResult verifySignatures(org.minidns.dnsmessage.Question r33, java.util.Collection r34, java.util.ArrayList r35) {
        /*
            Method dump skipped, instructions count: 962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.dnssec.DnssecClient.verifySignatures(org.minidns.dnsmessage.Question, java.util.Collection, java.util.ArrayList):org.minidns.dnssec.DnssecClient$VerifySignaturesResult");
    }
}
