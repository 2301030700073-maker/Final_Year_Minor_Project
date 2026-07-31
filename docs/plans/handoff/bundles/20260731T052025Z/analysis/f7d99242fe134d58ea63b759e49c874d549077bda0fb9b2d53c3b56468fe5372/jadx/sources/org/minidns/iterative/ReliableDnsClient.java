package org.minidns.iterative;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import com.fsck.k9.mailstore.LocalFolder;
import de.cketti.changelog.XmlParser;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.io.FileSystemException;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.AbstractDnsClient;
import org.minidns.DnsClient;
import org.minidns.cache.LruCache;
import org.minidns.constants.DnsRootServer;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsmessage.Question;
import org.minidns.dnsname.DnsName;
import org.minidns.dnsqueryresult.DnsQueryResult;
import org.minidns.dnsqueryresult.StandardDnsQueryResult;
import org.minidns.edns.Edns;
import org.minidns.iterative.IterativeClientException;
import org.minidns.record.A;
import org.minidns.record.AAAA;
import org.minidns.record.Data;
import org.minidns.record.NS;
import org.minidns.record.RRWithTarget;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ReliableDnsClient extends AbstractDnsClient {
    public final AnonymousClass2 dnsClient;
    public int mode;
    public final AnonymousClass1 recursiveDnsClient;

    /* JADX WARN: Type inference failed for: r0v2, types: [org.minidns.iterative.ReliableDnsClient$2] */
    public ReliableDnsClient(LruCache lruCache) {
        super(lruCache);
        this.mode = 1;
        this.recursiveDnsClient = new AnonymousClass1(lruCache);
        this.dnsClient = new DnsClient(lruCache) { // from class: org.minidns.iterative.ReliableDnsClient.2
            @Override // org.minidns.AbstractDnsClient
            public final boolean isResponseCacheable(Question question, StandardDnsQueryResult standardDnsQueryResult) {
                boolean z;
                DnsMessage dnsMessage = (DnsMessage) standardDnsQueryResult.response;
                Iterator it = dnsMessage.answerSection.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (((Record) it.next()).isAnswer(question)) {
                        z = true;
                        break;
                    }
                }
                return ReliableDnsClient.this.isResponseAcceptable(dnsMessage) == null && z;
            }

            @Override // org.minidns.AbstractDnsClient
            public final DnsMessage.Builder newQuestion(DnsMessage.Builder builder) {
                builder.recursionDesired = true;
                if (builder.ednsBuilder == null) {
                    builder.ednsBuilder = new Edns.Builder();
                }
                Edns.Builder builder2 = builder.ednsBuilder;
                this.dataSource.getClass();
                builder2.udpPayloadSize = 1232;
                builder2.dnssecOk = false;
                return ReliableDnsClient.this.newQuestion(builder);
            }
        };
    }

    public String isResponseAcceptable(DnsMessage dnsMessage) {
        return null;
    }

    @Override // org.minidns.AbstractDnsClient
    public final boolean isResponseCacheable(Question question, StandardDnsQueryResult standardDnsQueryResult) {
        return isResponseAcceptable((DnsMessage) standardDnsQueryResult.response) == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x002c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    @Override // org.minidns.AbstractDnsClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.minidns.dnsqueryresult.DnsQueryResult query(org.minidns.dnsmessage.DnsMessage.Builder r9) {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            int r1 = r8.mode
            r2 = 0
            r3 = 3
            if (r1 == r3) goto L25
            org.minidns.iterative.ReliableDnsClient$2 r1 = r8.dnsClient     // Catch: java.io.IOException -> L1e
            org.minidns.dnsqueryresult.DnsQueryResult r1 = r1.query(r9)     // Catch: java.io.IOException -> L1e
            java.lang.Object r4 = r1.response     // Catch: java.io.IOException -> L1c
            org.minidns.dnsmessage.DnsMessage r4 = (org.minidns.dnsmessage.DnsMessage) r4     // Catch: java.io.IOException -> L1c
            java.lang.String r4 = r8.isResponseAcceptable(r4)     // Catch: java.io.IOException -> L1c
            if (r4 != 0) goto L27
            return r1
        L1c:
            r4 = move-exception
            goto L20
        L1e:
            r4 = move-exception
            r1 = r2
        L20:
            r0.add(r4)
            r4 = r2
            goto L27
        L25:
            r1 = r2
            r4 = r1
        L27:
            int r5 = r8.mode
            r6 = 2
            if (r5 != r6) goto L2d
            return r1
        L2d:
            java.util.logging.Level r5 = java.util.logging.Level.FINE
            java.util.logging.Logger r6 = org.minidns.AbstractDnsClient.LOGGER
            boolean r7 = r6.isLoggable(r5)
            if (r7 == 0) goto L6c
            int r7 = r8.mode
            if (r7 == r3) goto L6c
            boolean r3 = r0.isEmpty()
            java.lang.String r7 = "Resolution fall back to iterative mode because: "
            if (r3 != 0) goto L51
            r2 = 0
            java.lang.Object r2 = r0.get(r2)
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r2 = r7.concat(r2)
            goto L62
        L51:
            if (r1 != 0) goto L56
            java.lang.String r2 = "Resolution fall back to iterative mode because:  DnsClient did not return a response"
            goto L62
        L56:
            if (r4 == 0) goto L66
            java.lang.String r2 = java.lang.String.valueOf(r1)
            java.lang.String r3 = ". Response:\n"
            java.lang.String r2 = androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3.m(r7, r4, r3, r2)
        L62:
            r6.log(r5, r2)
            goto L6c
        L66:
            java.lang.String r8 = "This should never been reached"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r2
        L6c:
            org.minidns.iterative.ReliableDnsClient$1 r8 = r8.recursiveDnsClient     // Catch: java.io.IOException -> L73
            org.minidns.dnsqueryresult.DnsQueryResult r1 = r8.query(r9)     // Catch: java.io.IOException -> L73
            goto L77
        L73:
            r8 = move-exception
            r0.add(r8)
        L77:
            if (r1 != 0) goto L7c
            kotlin.io.FileSystemException.throwIfRequired(r0)
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.iterative.ReliableDnsClient.query(org.minidns.dnsmessage.DnsMessage$Builder):org.minidns.dnsqueryresult.DnsQueryResult");
    }

    @Override // org.minidns.AbstractDnsClient
    public DnsMessage.Builder newQuestion(DnsMessage.Builder builder) {
        return builder;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.minidns.iterative.ReliableDnsClient$1, reason: invalid class name */
    public final class AnonymousClass1 extends AbstractDnsClient {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final int maxSteps;

        public AnonymousClass1(LruCache lruCache) {
            super(lruCache);
            this.maxSteps = 128;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0055 A[EDGE_INSN: B:24:0x0055->B:22:0x0055 BREAK  A[LOOP:1: B:13:0x0034->B:17:0x0044], SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.net.InetAddress[] getTargets(java.util.Set r5, java.util.Set r6) {
            /*
                r0 = 2
                java.net.InetAddress[] r0 = new java.net.InetAddress[r0]
                java.util.Iterator r5 = r5.iterator()
            L7:
                boolean r1 = r5.hasNext()
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L30
                java.lang.Object r1 = r5.next()
                org.minidns.record.InternetAddressRR r1 = (org.minidns.record.InternetAddressRR) r1
                r4 = r0[r3]
                if (r4 != 0) goto L26
                java.net.InetAddress r4 = r1.getInetAddress()
                r0[r3] = r4
                boolean r4 = r6.isEmpty()
                if (r4 == 0) goto L26
                goto L7
            L26:
                r5 = r0[r2]
                if (r5 != 0) goto L30
                java.net.InetAddress r5 = r1.getInetAddress()
                r0[r2] = r5
            L30:
                java.util.Iterator r5 = r6.iterator()
            L34:
                boolean r6 = r5.hasNext()
                if (r6 == 0) goto L55
                java.lang.Object r6 = r5.next()
                org.minidns.record.InternetAddressRR r6 = (org.minidns.record.InternetAddressRR) r6
                r1 = r0[r3]
                if (r1 != 0) goto L4b
                java.net.InetAddress r6 = r6.getInetAddress()
                r0[r3] = r6
                goto L34
            L4b:
                r5 = r0[r2]
                if (r5 != 0) goto L55
                java.net.InetAddress r5 = r6.getInetAddress()
                r0[r2] = r5
            L55:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.minidns.iterative.ReliableDnsClient.AnonymousClass1.getTargets(java.util.Set, java.util.Set):java.net.InetAddress[]");
        }

        @Override // org.minidns.AbstractDnsClient
        public final boolean isResponseCacheable(Question question, StandardDnsQueryResult standardDnsQueryResult) {
            DnsMessage dnsMessage = (DnsMessage) standardDnsQueryResult.response;
            return ReliableDnsClient.this.isResponseAcceptable(dnsMessage) == null && dnsMessage.authoritativeAnswer;
        }

        @Override // org.minidns.AbstractDnsClient
        public final DnsMessage.Builder newQuestion(DnsMessage.Builder builder) {
            builder.recursionDesired = false;
            if (builder.ednsBuilder == null) {
                builder.ednsBuilder = new Edns.Builder();
            }
            Edns.Builder builder2 = builder.ednsBuilder;
            this.dataSource.getClass();
            builder2.udpPayloadSize = 1232;
            return ReliableDnsClient.this.newQuestion(builder);
        }

        @Override // org.minidns.AbstractDnsClient
        public final DnsQueryResult query(DnsMessage.Builder builder) {
            builder.getClass();
            return queryRecursive(new XmlParser(this), new DnsMessage(builder));
        }

        public final DnsQueryResult queryRecursive(XmlParser xmlParser, DnsMessage dnsMessage, InetAddress inetAddress) {
            LocalFolder.AnonymousClass9 anonymousClass9;
            Record.TYPE type;
            List unmodifiableList;
            Question question = dnsMessage.getQuestion();
            HashMap hashMap = (HashMap) xmlParser.result;
            if (!hashMap.containsKey(inetAddress)) {
                hashMap.put(inetAddress, new HashSet());
            } else if (((Set) hashMap.get(inetAddress)).contains(question)) {
                throw new IterativeClientException.LoopDetected(ImageAnalysis$$ExternalSyntheticLambda3.m("Resolution loop detected: We already asked ", String.valueOf(inetAddress), " about ", String.valueOf(question)));
            }
            int i = xmlParser.lastVersionCode + 1;
            xmlParser.lastVersionCode = i;
            if (i > ((AnonymousClass1) xmlParser.xmlPullParser).maxSteps) {
                throw new IterativeClientException.MaxIterativeStepsReached("Maxmimum steps reached");
            }
            ((Set) hashMap.get(inetAddress)).add(question);
            DnsQueryResult query = query(dnsMessage, inetAddress);
            DnsMessage dnsMessage2 = (DnsMessage) query.response;
            if (dnsMessage2.authoritativeAnswer) {
                return query;
            }
            List list = dnsMessage2.authoritySection;
            ArrayList arrayList = new ArrayList(list.size());
            arrayList.addAll(list);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Record ifPossibleAs = ((Record) it.next()).ifPossibleAs(NS.class);
                if (ifPossibleAs == null) {
                    it.remove();
                } else {
                    DnsName dnsName = ((NS) ifPossibleAs.payloadData).target;
                    ArrayList arrayList3 = new ArrayList(8);
                    ArrayList arrayList4 = new ArrayList(8);
                    for (Record record : dnsMessage2.additionalSection) {
                        DnsName dnsName2 = record.name;
                        Data data = record.payloadData;
                        if (dnsName2.equals(dnsName)) {
                            int ordinal = record.type.ordinal();
                            if (ordinal == 1) {
                                try {
                                    arrayList3.add(InetAddress.getByAddress(dnsName.ace, (byte[]) ((A) data).ip.clone()));
                                } catch (UnknownHostException e) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                                    return null;
                                }
                            } else if (ordinal != 28) {
                                continue;
                            } else {
                                try {
                                    arrayList4.add(InetAddress.getByAddress(dnsName.ace, (byte[]) ((AAAA) data).ip.clone()));
                                } catch (UnknownHostException e2) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                    return null;
                                }
                            }
                        }
                    }
                    int i2 = AbstractDnsClient.DEFAULT_IP_VERSION_SETTING;
                    int ordinal2 = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i2);
                    int size = ordinal2 != 0 ? ordinal2 != 1 ? arrayList4.size() + arrayList3.size() : arrayList4.size() : arrayList3.size();
                    if (size == 0) {
                        unmodifiableList = Collections.EMPTY_LIST;
                    } else {
                        boolean v4 = Sink$CC.getV4(i2);
                        Random random = this.insecureRandom;
                        if (v4) {
                            Collections.shuffle(arrayList3, random);
                        }
                        if (Sink$CC.getV6(i2)) {
                            Collections.shuffle(arrayList4, random);
                        }
                        ArrayList arrayList5 = new ArrayList(size);
                        arrayList5.addAll(arrayList3);
                        arrayList5.addAll(arrayList4);
                        unmodifiableList = DesugarCollections.unmodifiableList(arrayList5);
                    }
                    Iterator it2 = unmodifiableList.iterator();
                    while (it2.hasNext()) {
                        try {
                            return this.queryRecursive(xmlParser, dnsMessage, (InetAddress) it2.next());
                        } catch (IOException e3) {
                            if (e3 instanceof IterativeClientException.LoopDetected) {
                                throw e3;
                            }
                            AbstractDnsClient.LOGGER.log(Level.FINER, "Exception while recursing", (Throwable) e3);
                            xmlParser.lastVersionCode--;
                            arrayList2.add(e3);
                            if (!it2.hasNext()) {
                                it.remove();
                            }
                        }
                    }
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                Record record2 = (Record) it3.next();
                Question question2 = dnsMessage.getQuestion();
                DnsName dnsName3 = ((NS) record2.payloadData).target;
                if (!question2.name.equals(dnsName3) || ((type = question2.type) != Record.TYPE.A && type != Record.TYPE.AAAA)) {
                    try {
                        anonymousClass9 = this.resolveIpRecursive(xmlParser, dnsName3);
                    } catch (IOException e4) {
                        xmlParser.lastVersionCode--;
                        arrayList2.add(e4);
                        anonymousClass9 = null;
                    }
                    if (anonymousClass9 == null) {
                        continue;
                    } else {
                        Iterator it4 = anonymousClass9.val$messages.iterator();
                        while (it4.hasNext()) {
                            try {
                                return this.queryRecursive(xmlParser, dnsMessage, (InetAddress) it4.next());
                            } catch (IOException e5) {
                                xmlParser.lastVersionCode--;
                                arrayList2.add(e5);
                            }
                        }
                    }
                }
            }
            FileSystemException.throwIfRequired(arrayList2);
            throw new IterativeClientException.MaxIterativeStepsReached("Did not receive an authoritative answer, nor did the result contain any glue records");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final LocalFolder.AnonymousClass9 resolveIpRecursive(XmlParser xmlParser, DnsName dnsName) {
            LocalFolder.AnonymousClass9 anonymousClass9;
            ArrayList arrayList = new ArrayList(8);
            ArrayList arrayList2 = new ArrayList(8);
            int i = this.ipVersionSetting;
            boolean v4 = Sink$CC.getV4(i);
            int i2 = 65535;
            SecureRandom secureRandom = this.random;
            LocalFolder.AnonymousClass9 anonymousClass92 = null;
            if (v4) {
                Question question = new Question(dnsName, Record.TYPE.A);
                Logger logger = DnsMessage.LOGGER;
                DnsMessage.Builder builder = new DnsMessage.Builder();
                builder.opcode = DnsMessage.OPCODE.QUERY;
                builder.responseCode = DnsMessage.RESPONSE_CODE.NO_ERROR;
                builder.receiveTimestamp = -1L;
                ArrayList arrayList3 = new ArrayList(1);
                builder.questions = arrayList3;
                arrayList3.add(question);
                builder.id = secureRandom.nextInt() & 65535;
                DnsMessage.Builder newQuestion = newQuestion(builder);
                newQuestion.getClass();
                DnsQueryResult queryRecursive = queryRecursive(xmlParser, new DnsMessage(newQuestion));
                DnsMessage dnsMessage = queryRecursive != null ? (DnsMessage) queryRecursive.response : null;
                if (dnsMessage != null) {
                    for (Record record : dnsMessage.answerSection) {
                        boolean isAnswer = record.isAnswer(question);
                        int i3 = i2;
                        Data data = record.payloadData;
                        if (isAnswer) {
                            try {
                                arrayList.add(InetAddress.getByAddress(dnsName.ace, (byte[]) ((A) data).ip.clone()));
                                anonymousClass9 = anonymousClass92;
                            } catch (UnknownHostException e) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                                return anonymousClass92;
                            }
                        } else {
                            anonymousClass9 = anonymousClass92;
                            if (record.type == Record.TYPE.CNAME && record.name.equals(dnsName)) {
                                return resolveIpRecursive(xmlParser, ((RRWithTarget) data).target);
                            }
                        }
                        i2 = i3;
                        anonymousClass92 = anonymousClass9;
                    }
                }
            }
            int i4 = i2;
            LocalFolder.AnonymousClass9 anonymousClass93 = anonymousClass92;
            if (Sink$CC.getV6(i)) {
                Question question2 = new Question(dnsName, Record.TYPE.AAAA);
                Logger logger2 = DnsMessage.LOGGER;
                DnsMessage.Builder builder2 = new DnsMessage.Builder();
                builder2.opcode = DnsMessage.OPCODE.QUERY;
                builder2.responseCode = DnsMessage.RESPONSE_CODE.NO_ERROR;
                builder2.receiveTimestamp = -1L;
                ArrayList arrayList4 = new ArrayList(1);
                builder2.questions = arrayList4;
                arrayList4.add(question2);
                builder2.id = secureRandom.nextInt() & i4;
                DnsMessage.Builder newQuestion2 = newQuestion(builder2);
                newQuestion2.getClass();
                DnsQueryResult queryRecursive2 = queryRecursive(xmlParser, new DnsMessage(newQuestion2));
                DnsMessage dnsMessage2 = queryRecursive2 != null ? (DnsMessage) queryRecursive2.response : anonymousClass93;
                if (dnsMessage2 != 0) {
                    for (Record record2 : dnsMessage2.answerSection) {
                        boolean isAnswer2 = record2.isAnswer(question2);
                        Data data2 = record2.payloadData;
                        if (isAnswer2) {
                            try {
                                arrayList2.add(InetAddress.getByAddress(dnsName.ace, (byte[]) ((AAAA) data2).ip.clone()));
                            } catch (UnknownHostException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return anonymousClass93;
                            }
                        } else if (record2.type == Record.TYPE.CNAME && record2.name.equals(dnsName)) {
                            return resolveIpRecursive(xmlParser, ((RRWithTarget) data2).target);
                        }
                    }
                }
            }
            LocalFolder.AnonymousClass9 anonymousClass94 = new LocalFolder.AnonymousClass9();
            int i5 = AbstractDnsClient.DEFAULT_IP_VERSION_SETTING;
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i5);
            int size = ordinal != 0 ? ordinal != 1 ? arrayList2.size() + arrayList.size() : arrayList2.size() : arrayList.size();
            if (size == 0) {
                anonymousClass94.val$messages = Collections.EMPTY_LIST;
            } else {
                boolean v42 = Sink$CC.getV4(i5);
                Random random = this.insecureRandom;
                if (v42) {
                    Collections.shuffle(arrayList, random);
                }
                if (Sink$CC.getV6(i5)) {
                    Collections.shuffle(arrayList2, random);
                }
                ArrayList arrayList5 = new ArrayList(size);
                arrayList5.addAll(arrayList);
                arrayList5.addAll(arrayList2);
                anonymousClass94.val$messages = DesugarCollections.unmodifiableList(arrayList5);
            }
            return anonymousClass94;
        }

        public final DnsQueryResult queryRecursive(XmlParser xmlParser, DnsMessage dnsMessage) {
            InetAddress inetAddress;
            InetAddress inetAddress2;
            DnsName dnsName = dnsMessage.getQuestion().name;
            DnsName stripToLabels = dnsName.isRootLabel() ? DnsName.ROOT : dnsName.stripToLabels(dnsName.getLabelCount() - 1);
            int i = this.ipVersionSetting;
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i);
            if (ordinal == 0) {
                inetAddress = null;
                for (A a : getCachedIPNameserverAddressesFor(stripToLabels, Record.TYPE.A)) {
                    if (inetAddress == null) {
                        inetAddress = a.getInetAddress();
                    } else {
                        inetAddress2 = a.getInetAddress();
                        break;
                    }
                }
                inetAddress2 = null;
            } else if (ordinal == 1) {
                inetAddress = null;
                for (AAAA aaaa : getCachedIPNameserverAddressesFor(stripToLabels, Record.TYPE.AAAA)) {
                    if (inetAddress == null) {
                        inetAddress = aaaa.getInetAddress();
                    } else {
                        inetAddress2 = aaaa.getInetAddress();
                        break;
                    }
                }
                inetAddress2 = null;
            } else if (ordinal == 2) {
                InetAddress[] targets = getTargets(getCachedIPNameserverAddressesFor(stripToLabels, Record.TYPE.A), getCachedIPNameserverAddressesFor(stripToLabels, Record.TYPE.AAAA));
                inetAddress = targets[0];
                inetAddress2 = targets[1];
            } else if (ordinal == 3) {
                InetAddress[] targets2 = getTargets(getCachedIPNameserverAddressesFor(stripToLabels, Record.TYPE.AAAA), getCachedIPNameserverAddressesFor(stripToLabels, Record.TYPE.A));
                inetAddress = targets2[0];
                inetAddress2 = targets2[1];
            } else {
                throw new AssertionError();
            }
            if (inetAddress == null) {
                DnsName dnsName2 = DnsName.ROOT;
                int ordinal2 = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i);
                Random random = this.insecureRandom;
                if (ordinal2 == 0) {
                    InetAddress[] inetAddressArr = DnsRootServer.IPV4_ROOT_SERVERS;
                    inetAddress = inetAddressArr[random.nextInt(inetAddressArr.length)];
                } else if (ordinal2 == 1) {
                    InetAddress[] inetAddressArr2 = DnsRootServer.IPV6_ROOT_SERVERS;
                    inetAddress = inetAddressArr2[random.nextInt(inetAddressArr2.length)];
                } else if (ordinal2 == 2) {
                    InetAddress[] inetAddressArr3 = DnsRootServer.IPV4_ROOT_SERVERS;
                    inetAddress = inetAddressArr3[random.nextInt(inetAddressArr3.length)];
                    InetAddress[] inetAddressArr4 = DnsRootServer.IPV6_ROOT_SERVERS;
                    inetAddress2 = inetAddressArr4[random.nextInt(inetAddressArr4.length)];
                } else if (ordinal2 == 3) {
                    InetAddress[] inetAddressArr5 = DnsRootServer.IPV6_ROOT_SERVERS;
                    inetAddress = inetAddressArr5[random.nextInt(inetAddressArr5.length)];
                    InetAddress[] inetAddressArr6 = DnsRootServer.IPV4_ROOT_SERVERS;
                    inetAddress2 = inetAddressArr6[random.nextInt(inetAddressArr6.length)];
                }
            }
            ArrayList arrayList = new ArrayList();
            try {
                return queryRecursive(xmlParser, dnsMessage, inetAddress);
            } catch (IOException e) {
                if (!(e instanceof IterativeClientException.LoopDetected)) {
                    arrayList.add(e);
                    if (inetAddress2 != null) {
                        try {
                            return this.queryRecursive(xmlParser, dnsMessage, inetAddress2);
                        } catch (IOException e2) {
                            arrayList.add(e2);
                            FileSystemException.throwIfRequired(arrayList);
                            return null;
                        }
                    }
                    FileSystemException.throwIfRequired(arrayList);
                    return null;
                }
                throw e;
            }
        }
    }
}
