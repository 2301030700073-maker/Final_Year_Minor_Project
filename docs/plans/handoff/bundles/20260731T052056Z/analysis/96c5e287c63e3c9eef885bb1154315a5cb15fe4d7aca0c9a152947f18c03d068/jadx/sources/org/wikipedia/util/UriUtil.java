package org.wikipedia.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.TransactionTooLargeException;
import android.widget.Toast;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsSortKt$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver$CC;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.Charsets;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.CipherSuite;
import okhttp3.Handshake;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okhttp3.TlsVersion;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.maps.MapView;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.YearInReviewEvent$ActionData;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.dataclient.donate.CampaignCollection;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda5;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.main.MainActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UriUtil {
    public static final void FeaturedImageModule(WikiSite wikiSite, FeaturedImageCard featuredImageCard, Function1 function1, Function0 function0, Function1 function12, Function1 function13, Function1 function14, Function0 function02, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        gapComposer.startRestartGroup(-1133951808);
        int i2 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(featuredImageCard) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function12) ? 16384 : 8192) | (gapComposer.changedInstance(function13) ? 131072 : 65536) | (gapComposer.changedInstance(function14) ? 1048576 : 524288) | (gapComposer.changedInstance(function02) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            FeaturedImage featuredImage = featuredImageCard.featuredImage;
            Integer valueOf = Integer.valueOf(R.drawable.ic_commons_logo);
            boolean changedInstance = gapComposer.changedInstance(featuredImage) | ((i2 & 57344) == 16384);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new Regex$$ExternalSyntheticLambda0(20, function12, featuredImage);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(738169934, new TopReadModuleKt$$ExternalSyntheticLambda0(function1, featuredImageCard, context, featuredImage, function13, function14, wikiSite), gapComposer);
            int i3 = i2 << 3;
            ForYouCardKt.m906CommunityModuleContainerYod850M(null, wikiSite, R.string.view_featured_image_card_title, R.string.explore_feed_potd_subtitle, valueOf, 0L, function0, (Function0) rememberedValue, function02, rememberComposableLambda, gapComposer, (i3 & 112) | 805306368 | ((i2 << 9) & 3670016) | (i3 & 234881024), 33);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeFragment$$ExternalSyntheticLambda5(wikiSite, featuredImageCard, function1, function0, function12, function13, function14, function02, i, 4);
        }
    }

    public static String binarySearch(ByteString byteString, ByteString[] byteStringArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int size$okio = byteString.getSize$okio();
        int i5 = 0;
        while (i5 < size$okio) {
            int i6 = (i5 + size$okio) / 2;
            while (i6 > -1 && byteString.internalGet$okio(i6) != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (byteString.internalGet$okio(i2) == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    byte internalGet$okio = byteStringArr[i10].internalGet$okio(i11);
                    byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                    int i13 = internalGet$okio & 255;
                    z = z2;
                    i3 = i13;
                }
                byte internalGet$okio2 = byteString.internalGet$okio(i7 + i12);
                byte[] bArr2 = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                i4 = i3 - (internalGet$okio2 & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 == i9) {
                    break;
                }
                if (byteStringArr[i10].getSize$okio() != i11) {
                    z2 = z;
                } else {
                    if (i10 == byteStringArr.length - 1) {
                        break;
                    }
                    i10++;
                    i11 = -1;
                    z2 = true;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i9 - i12;
                    int size$okio2 = byteStringArr[i10].getSize$okio() - i11;
                    int length = byteStringArr.length;
                    for (int i15 = i10 + 1; i15 < length; i15++) {
                        size$okio2 += byteStringArr[i15].getSize$okio();
                    }
                    if (size$okio2 >= i14) {
                        if (size$okio2 <= i14) {
                            return byteString.substring(i7, i9 + i7).string(Charsets.UTF_8);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            size$okio = i6;
        }
        return null;
    }

    public static String encodeURL(String str) {
        str.getClass();
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            encode.getClass();
            return StringsKt__StringsJVMKt.replace$default(encode, "+", "%20");
        } catch (UnsupportedEncodingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public static Handshake get(SSLSession sSLSession) {
        List list;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("cipherSuite == null");
            return null;
        }
        if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") || cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("cipherSuite == ".concat(cipherSuite));
            return null;
        }
        CipherSuite forJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("tlsVersion == null");
            return null;
        }
        if ("NONE".equals(protocol)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("tlsVersion == NONE");
            return null;
        }
        TlsVersion.Companion.getClass();
        TlsVersion forJavaName2 = TlsVersion.Companion.forJavaName(protocol);
        try {
            list = _UtilJvmKt.toImmutableList(sSLSession.getPeerCertificates());
        } catch (SSLPeerUnverifiedException unused) {
            list = EmptyList.INSTANCE;
        }
        return new Handshake(forJavaName2, forJavaName, _UtilJvmKt.toImmutableList(sSLSession.getLocalCertificates()), new Handshake$Companion$$ExternalSyntheticLambda0(list, 0));
    }

    public static String getTitleFromUrl(String str) {
        Pattern compile = Pattern.compile("^.*?/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/");
        compile.getClass();
        String replaceFirst = compile.matcher(str).replaceFirst("");
        replaceFirst.getClass();
        Pattern compile2 = Pattern.compile("#.*$");
        compile2.getClass();
        String replaceFirst2 = compile2.matcher(replaceFirst).replaceFirst("");
        replaceFirst2.getClass();
        return StringsKt__StringsJVMKt.replace$default(replaceFirst2, "_", " ");
    }

    public static void handleExternalLink(Context context, Uri uri) {
        context.getClass();
        visitInExternalBrowser(context, uri);
    }

    public static boolean immediateAnimation(MapView.AnonymousClass2 anonymousClass2, LatLng latLng, LatLng latLng2) {
        return latLng.distanceTo(latLng2) / anonymousClass2.getMetersPerPixelAtLatitude((latLng2.getLatitude() + latLng.getLatitude()) / 2.0d) > 50000.0d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005a, code lost:
    
        if (r0 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
    
        if (r3.length() != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
    
        if (r5.length() != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        if (r4.matcher(r3).matches() == true) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isAppSupportedLink(android.net.Uri r5) {
        /*
            java.lang.String r0 = r5.getAuthority()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L15
            org.wikipedia.dataclient.WikiSite$Companion r3 = org.wikipedia.dataclient.WikiSite.Companion
            r3.getClass()
            boolean r0 = org.wikipedia.dataclient.WikiSite.Companion.supportedAuthority(r0)
            if (r0 != r2) goto L15
            r0 = r2
            goto L16
        L15:
            r0 = r1
        L16:
            java.lang.String r3 = r5.getPath()
            if (r3 == 0) goto L30
            java.lang.String r4 = "^/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/.*"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)
            r4.getClass()
            java.util.regex.Matcher r3 = r4.matcher(r3)
            boolean r3 = r3.matches()
            if (r3 != r2) goto L30
            goto L5a
        L30:
            java.lang.String r3 = r5.getFragment()
            if (r3 == 0) goto L3c
            int r3 = r3.length()
            if (r3 != 0) goto L5a
        L3c:
            java.lang.String r3 = "title"
            java.lang.String r3 = r5.getQueryParameter(r3)
            if (r3 == 0) goto L5d
            int r3 = r3.length()
            if (r3 != 0) goto L4b
            goto L5d
        L4b:
            java.lang.String r3 = "diff"
            java.lang.String r5 = r5.getQueryParameter(r3)
            if (r5 == 0) goto L5d
            int r5 = r5.length()
            if (r5 != 0) goto L5a
            goto L5d
        L5a:
            if (r0 == 0) goto L5d
            return r2
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.UriUtil.isAppSupportedLink(android.net.Uri):boolean");
    }

    public static boolean isHeaderTemplate(ThreadItem threadItem) {
        return threadItem != null && threadItem.headingLevel == 0 && threadItem.author.length() == 0 && threadItem.html.length() == 0;
    }

    public static boolean isSubscribable(ThreadItem threadItem) {
        String str = threadItem != null ? threadItem.name : null;
        if (str == null) {
            str = "";
        }
        return str.length() > 2;
    }

    public static boolean isValidPageLink(Uri uri) {
        String path;
        String authority = uri.getAuthority();
        if (authority != null && authority.length() != 0) {
            String authority2 = uri.getAuthority();
            authority2.getClass();
            if (StringsKt__StringsJVMKt.endsWith(authority2, "wikipedia.org", false) && (path = uri.getPath()) != null && path.length() != 0) {
                String path2 = uri.getPath();
                path2.getClass();
                Pattern compile = Pattern.compile("^/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/.*");
                compile.getClass();
                if (compile.matcher(path2).matches()) {
                    if (uri.getFragment() == null) {
                        return true;
                    }
                    String fragment = uri.getFragment();
                    fragment.getClass();
                    if (fragment.length() > 0) {
                        String fragment2 = uri.getFragment();
                        fragment2.getClass();
                        if (!StringsKt__StringsJVMKt.startsWith(fragment2, "cite", false)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static Intent newIntent(Context context, PageTitle pageTitle, PageSummaryForEdit pageSummaryForEdit, PageSummaryForEdit pageSummaryForEdit2, DescriptionEditActivity.Action action, Constants.InvokeSource invokeSource) {
        pageTitle.getClass();
        action.getClass();
        invokeSource.getClass();
        Intent putExtra = new Intent(context, (Class<?>) DescriptionEditActivity.class).putExtra("title", pageTitle).putExtra("highlightText", (String) null).putExtra("sourceSummary", pageSummaryForEdit).putExtra("targetSummary", pageSummaryForEdit2).putExtra("intentAction", action).putExtra("invokeSource", invokeSource);
        putExtra.getClass();
        return putExtra;
    }

    public static String resolveProtocolRelativeUrl(String str, WikiSite wikiSite) {
        wikiSite.getClass();
        str.getClass();
        String resolveProtocolRelativeUrl = resolveProtocolRelativeUrl(str);
        if (!StringsKt__StringsJVMKt.startsWith(resolveProtocolRelativeUrl, "./", false) && !StringsKt__StringsJVMKt.startsWith(resolveProtocolRelativeUrl, "/w/", false) && !StringsKt__StringsJVMKt.startsWith(resolveProtocolRelativeUrl, "/wiki/", false) && !StringsKt__StringsJVMKt.startsWith(resolveProtocolRelativeUrl, "/api/", false)) {
            return resolveProtocolRelativeUrl;
        }
        Uri.Builder buildUpon = wikiSite.uri.buildUpon();
        Pattern compile = Pattern.compile("/");
        compile.getClass();
        String replaceFirst = compile.matcher(resolveProtocolRelativeUrl).replaceFirst("");
        replaceFirst.getClass();
        String uri = buildUpon.appendEncodedPath(replaceFirst).build().toString();
        uri.getClass();
        return uri;
    }

    public static float shortestRotation(float f, float f2) {
        double d = f2 - f;
        return d > 180.0d ? f + 360.0f : d < -180.0d ? f - 360.0f : f;
    }

    public static void sort(List list, int i) {
        Object obj;
        list.getClass();
        if (i == 0) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new SemanticsSortKt$$ExternalSyntheticLambda0(4, new ForYouCardKt$$ExternalSyntheticLambda17(15)));
        } else if (i == 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new SemanticsSortKt$$ExternalSyntheticLambda0(5, new ForYouCardKt$$ExternalSyntheticLambda17(16)));
        } else if (i == 2) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new SemanticsSortKt$$ExternalSyntheticLambda0(6, new ForYouCardKt$$ExternalSyntheticLambda17(17)));
        } else if (i == 3) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new SemanticsSortKt$$ExternalSyntheticLambda0(7, new ForYouCardKt$$ExternalSyntheticLambda17(18)));
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (((ReadingList) obj).isDefault()) {
                    break;
                }
            }
        }
        ReadingList readingList = (ReadingList) obj;
        if (readingList != null) {
            list.remove(readingList);
            list.add(0, readingList);
        }
    }

    public static void submit$default(int i, Integer num, String str, String str2, String str3, String str4) {
        String str5 = null;
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 32) != 0) {
            num = null;
        }
        if ((i & 64) != 0) {
            str4 = null;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        appOrSystemLanguageCode.getClass();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        JsonImpl jsonImpl = JsonUtil.json;
        YearInReviewEvent$ActionData yearInReviewEvent$ActionData = new YearInReviewEvent$ActionData(str3, str2 != null ? CampaignCollection.getFormattedCampaignId(str2) : null, num, str4);
        try {
            JsonImpl jsonImpl2 = JsonUtil.json;
            jsonImpl2.getClass();
            str5 = jsonImpl2.encodeToString(YearInReviewEvent$ActionData.Companion.serializer(), yearInReviewEvent$ActionData);
        } catch (Exception e) {
            L.w(e);
        }
        if (str5 == null) {
            str5 = "";
        }
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        EventPlatformClient.submit(new AppInteractionEvent(str, "wiki_yir", str5, ViewSizeResolver$CC.m(), appOrSystemLanguageCode, "app_donor_experience"));
    }

    public static void visitInExternalBrowser(Context context, Uri uri) {
        context.getClass();
        try {
            Intent intentChooser = ShareUtil.getIntentChooser(context, new Intent("android.intent.action.VIEW", uri), null);
            if (intentChooser == null) {
                visitInExternalBrowserExplicit(context, uri);
            } else {
                intentChooser.setFlags(268435456);
                context.startActivity(intentChooser);
            }
        } catch (TransactionTooLargeException unused) {
            L.logRemoteErrorIfProd(new RuntimeException("Transaction too large for external link intent."));
        } catch (Exception unused2) {
            Toast.makeText(context, R.string.error_can_not_process_link, 1).show();
        }
    }

    public static void visitInExternalBrowserExplicit(Context context, Uri uri) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("https://www.example.com")), 65536);
        queryIntentActivities.getClass();
        ActivityInfo activityInfo = ((ResolveInfo) CollectionsKt.first((List) queryIntentActivities)).activityInfo;
        ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(uri);
        intent.setComponent(componentName);
        context.startActivity(intent);
    }

    public static Intent newIntent(Context context) {
        context.getClass();
        return new Intent(context, (Class<?>) MainActivity.class);
    }

    public static String resolveProtocolRelativeUrl(String str) {
        str.getClass();
        if (!StringsKt__StringsJVMKt.startsWith(str, "//", false)) {
            return str;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str);
    }
}
