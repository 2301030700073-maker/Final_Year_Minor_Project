package org.minidns;

import java.io.IOException;
import java.net.InetAddress;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.safety.Cleaner;
import org.minidns.cache.LruCache;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsmessage.Question;
import org.minidns.dnsname.DnsName;
import org.minidns.dnsqueryresult.DirectCachedDnsQueryResult;
import org.minidns.dnsqueryresult.DnsQueryResult;
import org.minidns.dnsqueryresult.StandardDnsQueryResult;
import org.minidns.record.NS;
import org.minidns.record.Record;
import org.minidns.source.NetworkDataSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractDnsClient {
    public final LruCache cache;
    public final NetworkDataSource dataSource;
    public final int ipVersionSetting;
    public final SecureRandom random;
    public static final LruCache DEFAULT_CACHE = new LruCache();
    public static final Logger LOGGER = Logger.getLogger(AbstractDnsClient.class.getName());
    public static final int DEFAULT_IP_VERSION_SETTING = 3;
    public final Cleaner onResponseCallback = new Cleaner(this);
    public final Random insecureRandom = new Random();

    public AbstractDnsClient(LruCache lruCache) {
        SecureRandom secureRandom;
        NetworkDataSource networkDataSource = new NetworkDataSource();
        networkDataSource.queryMode = 1;
        this.dataSource = networkDataSource;
        this.ipVersionSetting = DEFAULT_IP_VERSION_SETTING;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (NoSuchAlgorithmException unused) {
            secureRandom = new SecureRandom();
        }
        this.random = secureRandom;
        this.cache = lruCache;
    }

    public final Set getCachedIPNameserverAddressesFor(DnsName dnsName, Record.TYPE type) {
        Set cachedRecordsFor;
        Set<NS> cachedRecordsFor2 = getCachedRecordsFor(dnsName, Record.TYPE.NS);
        if (cachedRecordsFor2.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSet = new HashSet(cachedRecordsFor2.size() * 3);
        for (NS ns : cachedRecordsFor2) {
            int ordinal = type.ordinal();
            if (ordinal == 1) {
                cachedRecordsFor = getCachedRecordsFor(ns.target, Record.TYPE.A);
            } else {
                if (ordinal != 28) {
                    throw new AssertionError();
                }
                cachedRecordsFor = getCachedRecordsFor(ns.target, Record.TYPE.AAAA);
            }
            hashSet.addAll(cachedRecordsFor);
        }
        return hashSet;
    }

    public final Set getCachedRecordsFor(DnsName dnsName, Record.TYPE type) {
        LruCache lruCache = this.cache;
        if (lruCache == null) {
            return Collections.EMPTY_SET;
        }
        Question question = new Question(dnsName, type);
        Logger logger = DnsMessage.LOGGER;
        DnsMessage.Builder builder = new DnsMessage.Builder();
        builder.opcode = DnsMessage.OPCODE.QUERY;
        builder.responseCode = DnsMessage.RESPONSE_CODE.NO_ERROR;
        builder.receiveTimestamp = -1L;
        ArrayList arrayList = new ArrayList(1);
        builder.questions = arrayList;
        arrayList.add(question);
        builder.id = this.random.nextInt() & 65535;
        DnsMessage.Builder newQuestion = newQuestion(builder);
        newQuestion.getClass();
        DirectCachedDnsQueryResult directCachedDnsQueryResult = lruCache.get(new DnsMessage(newQuestion));
        return directCachedDnsQueryResult == null ? Collections.EMPTY_SET : ((DnsMessage) directCachedDnsQueryResult.response).getAnswersFor(question);
    }

    public abstract boolean isResponseCacheable(Question question, StandardDnsQueryResult standardDnsQueryResult);

    public abstract DnsMessage.Builder newQuestion(DnsMessage.Builder builder);

    public abstract DnsQueryResult query(DnsMessage.Builder builder);

    public final DnsQueryResult query(DnsMessage dnsMessage, InetAddress inetAddress) {
        LruCache lruCache = this.cache;
        DirectCachedDnsQueryResult directCachedDnsQueryResult = lruCache == null ? null : lruCache.get(dnsMessage);
        if (directCachedDnsQueryResult != null) {
            return directCachedDnsQueryResult;
        }
        Question question = dnsMessage.getQuestion();
        Level level = Level.FINE;
        Logger logger = LOGGER;
        logger.log(level, "Asking {0} on {1} for {2} with:\n{3}", new Object[]{inetAddress, 53, question, dnsMessage});
        try {
            StandardDnsQueryResult query = this.dataSource.query(dnsMessage, inetAddress);
            logger.log(level, "Response from {0} on {1} for {2}:\n{3}", new Object[]{inetAddress, 53, question, query});
            Cleaner cleaner = this.onResponseCallback;
            Question question2 = dnsMessage.getQuestion();
            AbstractDnsClient abstractDnsClient = (AbstractDnsClient) cleaner.safelist;
            if (abstractDnsClient.cache == null || !abstractDnsClient.isResponseCacheable(question2, query)) {
                return query;
            }
            LruCache lruCache2 = ((AbstractDnsClient) cleaner.safelist).cache;
            if (dnsMessage.normalizedVersionCache == null) {
                dnsMessage.normalizedVersionCache = new DnsMessage(dnsMessage);
            }
            DnsMessage dnsMessage2 = dnsMessage.normalizedVersionCache;
            lruCache2.getClass();
            if (dnsMessage2.normalizedVersionCache == null) {
                dnsMessage2.normalizedVersionCache = new DnsMessage(dnsMessage2);
            }
            DnsMessage dnsMessage3 = dnsMessage2.normalizedVersionCache;
            synchronized (lruCache2) {
                DnsMessage dnsMessage4 = (DnsMessage) query.response;
                if (dnsMessage4.receiveTimestamp <= 0) {
                    return query;
                }
                lruCache2.backend.put(dnsMessage3, new DirectCachedDnsQueryResult(0, dnsMessage4));
                return query;
            }
        } catch (IOException e) {
            LOGGER.log(level, "IOException {0} on {1} while resolving {2}: {3}", new Object[]{inetAddress, 53, question, e});
            throw e;
        }
    }
}
