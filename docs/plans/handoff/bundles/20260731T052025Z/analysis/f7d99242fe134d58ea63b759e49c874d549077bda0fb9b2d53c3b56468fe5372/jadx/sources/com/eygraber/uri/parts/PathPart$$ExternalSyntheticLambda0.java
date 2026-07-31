package com.eygraber.uri.parts;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavDeepLink;
import androidx.viewpager.widget.ViewPager;
import app.k9mail.autodiscovery.autoconfig.MxLookupResult;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.eygraber.uri.PathSegments;
import com.eygraber.uri.UriCodec;
import com.fsck.k9.activity.MessageHomeActivity;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.CharRange;
import kotlin.text.StringsKt;
import net.thunderbird.core.common.net.Domain;
import okio.Options;
import okio.Path;
import okio.PriorityQueue;
import org.jsoup.internal.SoftPool;
import org.minidns.MiniDnsException;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsmessage.Question;
import org.minidns.dnsname.DnsName;
import org.minidns.dnsqueryresult.DnsQueryResult;
import org.minidns.hla.DnssecResolverApi;
import org.minidns.record.MX;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PathPart$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ PathPart$$ExternalSyntheticLambda0(Path.Companion companion, String str) {
        this.$r8$classId = 2;
        this.f$0 = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = 11;
        byte b = 0;
        boolean z = false;
        String str = this.f$0;
        switch (i) {
            case 0:
                if (str != null) {
                    PriorityQueue priorityQueue = new PriorityQueue(i2, b);
                    while (true) {
                        int indexOf$default = StringsKt.indexOf$default(str, '/', b, 4);
                        if (indexOf$default > -1) {
                            if (b < indexOf$default) {
                                CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                                priorityQueue.add(UriCodec.decode(str.substring(b, indexOf$default)));
                            }
                            b = indexOf$default + 1;
                        } else {
                            if (b < str.length()) {
                                CharRange charRange2 = UriCodec.lowercaseAsciiAlphaRange;
                                priorityQueue.add(UriCodec.decode(str.substring(b)));
                            }
                            String[] strArr = (String[]) priorityQueue.array;
                            if (strArr != null) {
                                return new PathSegments(priorityQueue.size, strArr);
                            }
                        }
                    }
                }
                return PathSegments.EMPTY;
            case 1:
                return new NavDeepLink(str, null, null);
            case 2:
                str.getClass();
                DnssecResolverApi dnssecResolverApi = DnssecResolverApi.INSTANCE;
                dnssecResolverApi.getClass();
                Question question = new Question(DnsName.from(str), (Record.TYPE) Record.TYPE.DATA_LUT.get(MX.class));
                SoftPool queryDnssec = dnssecResolverApi.dnssecClient.queryDnssec(question);
                Set set = (Set) queryDnssec.initializer;
                DnsMessage dnsMessage = (DnsMessage) ((DnsQueryResult) queryDnssec.threadLocalStack).response;
                DnsMessage.RESPONSE_CODE response_code = dnsMessage.responseCode;
                HashSet answersFor = dnsMessage.getAnswersFor(question);
                Set unmodifiableSet = answersFor == null ? Collections.EMPTY_SET : DesugarCollections.unmodifiableSet(answersFor);
                boolean isEmpty = set == null ? false : DesugarCollections.unmodifiableSet(set).isEmpty();
                unmodifiableSet.getClass();
                List sortedWith = CollectionsKt.sortedWith(unmodifiableSet, new ViewPager.AnonymousClass1(i2));
                ArrayList arrayList = new ArrayList();
                Iterator it = sortedWith.iterator();
                while (it.hasNext()) {
                    String dnsName = ((MX) it.next()).target.toString();
                    dnsName.getClass();
                    try {
                        Domain.m1026constructorimpl(dnsName);
                    } catch (IllegalArgumentException unused) {
                        dnsName = null;
                    }
                    Domain domain = dnsName != null ? new Domain(dnsName) : null;
                    if (domain != null) {
                        arrayList.add(domain);
                    }
                }
                DnsMessage.RESPONSE_CODE response_code2 = DnsMessage.RESPONSE_CODE.NO_ERROR;
                if (response_code == response_code2) {
                    MiniDnsException.IdMismatch idMismatch = response_code == response_code2 ? null : new MiniDnsException.IdMismatch(ImageAnalysis$$ExternalSyntheticLambda3.m("Asking for ", String.valueOf(question), " yielded an error response ", String.valueOf(response_code)));
                    if (idMismatch != null) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Can not perform operation because the DNS resolution was unsuccessful", idMismatch);
                        return null;
                    }
                    z = isEmpty;
                }
                return new MxLookupResult(arrayList, z);
            case 3:
                return str;
            case 4:
                return Options.Companion.parametersOf(str);
            case 5:
                return Options.Companion.parametersOf(str);
            case 6:
                return Options.Companion.parametersOf(str);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Options.Companion.parametersOf(str);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Options.Companion.parametersOf(str);
            case 9:
                return Options.Companion.parametersOf(str);
            case 10:
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                return CameraDevices$CC.m("Couldn't select folder for ", str, " as LocalSearch is null.");
            case 11:
                return CameraDevices$CC.m("Imap Prefix (", str, ") detected, updating folder's server_id");
            case BasicTextKt.ShiftMeta /* 12 */:
                return CameraDevices$CC.m("Failed to create remote folder '", str, "'");
            default:
                return str;
        }
    }

    public /* synthetic */ PathPart$$ExternalSyntheticLambda0(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }
}
