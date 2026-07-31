package org.wikipedia.login;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import j$.time.LocalDateTime;
import j$.util.DesugarTimeZone;
import java.net.ProtocolException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import javax.net.ssl.SSLSocket;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.tls.internal.der.Adapters;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerReader;
import okio.BufferedSink;
import okio.ByteString;
import okio.RealBufferedSource;
import org.jsoup.Jsoup;
import org.maplibre.android.ModuleProvider;
import org.maplibre.android.log.LoggerDefinition;
import org.maplibre.android.style.expressions.Expression;
import org.maplibre.android.style.layers.LayoutPropertyValue;
import org.maplibre.android.style.layers.SymbolLayer;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleWebViewActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.search.HybridSearchAbCTest;
import org.wikipedia.search.HybridSearchOnboardingActivity;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.RemoteConfig$RemoteConfigAndroidV1;
import org.wikipedia.settings.RemoteConfig$RemoteConfigCommonV1;
import org.wikipedia.settings.RemoteConfig$RemoteConfigYearInReview;
import org.wikipedia.theme.ThemeChooserDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoginClient implements Internal.EnumLiteMap, DeferredSocketAdapter.Factory, BasicDerAdapter.Codec, ModuleProvider, LoggerDefinition {
    public static boolean enqueueForceEmailAuth;
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface LoginCallback {
        void error(Throwable th);

        void hCaptchaPrompt(LoginResult loginResult, LoginFailedException loginFailedException, String str, String str2);

        void passwordResetPrompt(String str);

        void success(LoginResult loginResult);

        void uiPrompt(LoginResult loginResult, LoginFailedException loginFailedException, String str, String str2);
    }

    public /* synthetic */ LoginClient(int i) {
        this.$r8$classId = i;
    }

    public static Long dateToTimestamp(Date date) {
        if (date != null) {
            return Long.valueOf(date.getTime());
        }
        return null;
    }

    public static Date fromTimestamp(Long l) {
        if (l == null) {
            return null;
        }
        return new Date(l.longValue());
    }

    public static SymbolLayer generateLayer(String str) {
        SymbolLayer symbolLayer = new SymbolLayer(str, "mapbox-location-source");
        Boolean bool = Boolean.TRUE;
        LayoutPropertyValue layoutPropertyValue = new LayoutPropertyValue("icon-allow-overlap", bool);
        LayoutPropertyValue layoutPropertyValue2 = new LayoutPropertyValue("icon-ignore-placement", bool);
        LayoutPropertyValue layoutPropertyValue3 = new LayoutPropertyValue("icon-rotation-alignment", "map");
        Expression.ExpressionLiteral expressionLiteral = new Expression.ExpressionLiteral(str);
        Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
        symbolLayer.setProperties(layoutPropertyValue, layoutPropertyValue2, layoutPropertyValue3, new LayoutPropertyValue("icon-rotate", Expression.match(expressionLiteral, new Expression.ExpressionLiteral(valueOf), Expression.stop("mapbox-location-foreground-layer", Expression.get("mapbox-property-gps-bearing")), Expression.stop("mapbox-location-background-layer", Expression.get("mapbox-property-gps-bearing")), Expression.stop("mapbox-location-shadow-layer", Expression.get("mapbox-property-gps-bearing")), Expression.stop("mapbox-location-bearing-layer", Expression.get("mapbox-property-compass-bearing")))), new LayoutPropertyValue("icon-image", Expression.match(new Expression.ExpressionLiteral(str), new Expression.ExpressionLiteral(""), Expression.stop("mapbox-location-foreground-layer", new Expression("case", Expression.get("mapbox-property-location-stale"), Expression.get("mapbox-property-foreground-stale-icon"), Expression.get("mapbox-property-foreground-icon"))), Expression.stop("mapbox-location-background-layer", new Expression("case", Expression.get("mapbox-property-location-stale"), Expression.get("mapbox-property-background-stale-icon"), Expression.get("mapbox-property-background-icon"))), Expression.stop("mapbox-location-shadow-layer", new Expression.ExpressionLiteral("mapbox-location-shadow-icon")), Expression.stop("mapbox-location-bearing-layer", Expression.get("mapbox-property-shadow-icon")))), new LayoutPropertyValue("icon-offset", Expression.match(new Expression.ExpressionLiteral(str), new Expression("literal", new Expression.ExpressionLiteralArray(new Float[]{valueOf, valueOf})), Expression.stop(new Expression.ExpressionLiteral("mapbox-location-foreground-layer"), Expression.get("mapbox-property-foreground-icon-offset")), Expression.stop(new Expression.ExpressionLiteral("mapbox-location-shadow-layer"), Expression.get("mapbox-property-shadow-icon-offset")))));
        return symbolLayer;
    }

    public static boolean isAccessible() {
        RemoteConfig$RemoteConfigYearInReview remoteConfig$RemoteConfigYearInReview;
        String geoIPCountryOverride;
        Object obj;
        Prefs prefs = Prefs.INSTANCE;
        if (Prefs.isShowDeveloperSettingsEnabled()) {
            return true;
        }
        RemoteConfig$RemoteConfigCommonV1 remoteConfig$RemoteConfigCommonV1 = PrefsIoUtil.getConfig().commonv1;
        String str = null;
        if (remoteConfig$RemoteConfigCommonV1 != null) {
            Iterator it = remoteConfig$RemoteConfigCommonV1.yir.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((RemoteConfig$RemoteConfigYearInReview) obj).year == 2025) {
                    break;
                }
            }
            remoteConfig$RemoteConfigYearInReview = (RemoteConfig$RemoteConfigYearInReview) obj;
        } else {
            remoteConfig$RemoteConfigYearInReview = null;
        }
        LocalDateTime now = LocalDateTime.now();
        if (remoteConfig$RemoteConfigYearInReview == null) {
            return false;
        }
        List list = remoteConfig$RemoteConfigYearInReview.hideCountryCodes;
        try {
            Prefs prefs2 = Prefs.INSTANCE;
            geoIPCountryOverride = Prefs.getGeoIPCountryOverride();
        } catch (IllegalArgumentException unused) {
        }
        if (geoIPCountryOverride != null && geoIPCountryOverride.length() != 0) {
            str = Prefs.getGeoIPCountryOverride();
            return CollectionsKt.contains(list, str) ? false : false;
        }
        str = Jsoup.unmarshal().symbol;
        return CollectionsKt.contains(list, str) ? false : false;
    }

    public static void login$default(LoginClient loginClient, LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl, WikiSite wikiSite, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Boolean bool, LoginCallback loginCallback, int i) {
        String str9 = (i & 16) != 0 ? null : str3;
        String str10 = (i & 32) != 0 ? null : str4;
        String str11 = (i & 64) != 0 ? null : str5;
        String str12 = (i & 128) != 0 ? null : str6;
        String str13 = (i & 256) != 0 ? null : str7;
        String str14 = (i & 512) != 0 ? null : str8;
        Boolean bool2 = (i & 1024) != 0 ? Boolean.FALSE : bool;
        loginClient.getClass();
        str.getClass();
        loginCallback.getClass();
        AwaitKt.launch$default(lifecycleCoroutineScopeImpl, new LoginClient$login$$inlined$CoroutineExceptionHandler$1(loginCallback), null, new LoginClient$login$2(str10, loginClient, wikiSite, bool2, str, str2, str9, str11, str12, str13, str14, loginCallback, null), 2);
    }

    public static ThemeChooserDialog newInstance(Constants.InvokeSource invokeSource, boolean z) {
        invokeSource.getClass();
        ThemeChooserDialog themeChooserDialog = new ThemeChooserDialog();
        themeChooserDialog.setArguments(UStringsKt.bundleOf(new Pair("invokeSource", invokeSource), new Pair("isEditing", Boolean.valueOf(z))));
        return themeChooserDialog;
    }

    public static Intent newIntent(Context context, int i, String str, PageTitle pageTitle, Constants.InvokeSource invokeSource, String str2, PageTitle pageTitle2, String str3, String str4) {
        pageTitle.getClass();
        invokeSource.getClass();
        str3.getClass();
        str4.getClass();
        Intent putExtra = new Intent(context, (Class<?>) EditSectionActivity.class).putExtra("sectionId", i).putExtra("sectionAnchor", str).putExtra("title", pageTitle).putExtra("sectionHighlightText", str2).putExtra("invokeSource", invokeSource).putExtra("imageTitle", pageTitle2).putExtra("imageSource", str3).putExtra("imageSourceProjects", str4);
        putExtra.getClass();
        return putExtra;
    }

    public static Intent newIntent$default(Context context, Constants.InvokeSource invokeSource, String str, String str2, int i) {
        Boolean bool;
        int i2 = SearchActivity.$r8$clinit;
        boolean z = false;
        boolean z2 = (i & 8) == 0;
        if ((i & 16) != 0) {
            str2 = null;
        }
        boolean z3 = (i & 32) == 0;
        context.getClass();
        invokeSource.getClass();
        HybridSearchAbCTest hybridSearchAbCTest = new HybridSearchAbCTest();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = PrefsIoUtil.getConfig().androidv1;
        if (remoteConfig$RemoteConfigAndroidV1 != null && (bool = remoteConfig$RemoteConfigAndroidV1.hybridSearchEnabled) != null) {
            z = bool.booleanValue();
        }
        if (z && hybridSearchAbCTest.getGroup() != 0 && hybridSearchAbCTest.isLanguageSupported(m)) {
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.isHybridSearchOnboardingShown()) {
                PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_onboarding_shown, true);
                int i3 = HybridSearchOnboardingActivity.$r8$clinit;
                Intent putExtra = new Intent(context, (Class<?>) HybridSearchOnboardingActivity.class).putExtra("invokeSource", invokeSource);
                putExtra.getClass();
                return putExtra;
            }
        }
        Intent putExtra2 = new Intent(context, (Class<?>) SearchActivity.class).putExtra("invokeSource", invokeSource).putExtra("query", str).putExtra("returnLink", z2).putExtra("articleTitle", str2).putExtra("showHybridSearch", z3);
        putExtra2.getClass();
        return putExtra2;
    }

    public static Intent newIntentForCurrentTab(Context context, HistoryEntry historyEntry, PageTitle pageTitle, boolean z) {
        historyEntry.getClass();
        Intent putExtra = new Intent(z ? "org.wikipedia.load_in_current_tab_squash" : "org.wikipedia.load_in_current_tab").setClass(context, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
        putExtra.getClass();
        return putExtra;
    }

    public static Intent newIntentForNewTab(Context context, HistoryEntry historyEntry, PageTitle pageTitle) {
        context.getClass();
        historyEntry.getClass();
        pageTitle.getClass();
        Intent putExtra = new Intent("org.wikipedia.load_in_new_tab").setClass(context, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
        putExtra.getClass();
        return putExtra;
    }

    public static void showToast(final int i) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance().getMainThreadHandler().post(new Runnable() { // from class: org.wikipedia.login.LoginClient$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                Toast.makeText(Jsoup.getInstance(), i, 1).show();
            }
        });
    }

    public static WikiSite stringToWikiSite(String str) {
        if (str == null) {
            return null;
        }
        return new WikiSite(str);
    }

    public static String wikiSiteToString(WikiSite wikiSite) {
        if (wikiSite != null) {
            return wikiSite.authority();
        }
        return null;
    }

    @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
    public SocketAdapter create(SSLSocket sSLSocket) {
        Class<?> cls = sSLSocket.getClass();
        Class<?> cls2 = cls;
        while (!cls2.getSimpleName().equals("OpenSSLSocketImpl")) {
            cls2 = cls2.getSuperclass();
            if (cls2 == null) {
                VisualTransformation$Companion$$ExternalSyntheticLambda0.m("No OpenSSLSocketImpl superclass of socket of type ", cls);
                return null;
            }
        }
        return new AndroidSocketAdapter(cls2);
    }

    @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
    public Object decode(DerReader derReader) {
        switch (this.$r8$classId) {
            case 7:
                derReader.getClass();
                String readUtf8String = derReader.readUtf8String();
                BasicDerAdapter basicDerAdapter = Adapters.BOOLEAN;
                TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
                simpleDateFormat.setTimeZone(timeZone);
                try {
                    return Long.valueOf(simpleDateFormat.parse(readUtf8String).getTime());
                } catch (ParseException unused) {
                    throw new ProtocolException("Failed to parse GeneralizedTime ".concat(readUtf8String));
                }
            case 8:
                derReader.getClass();
                RealBufferedSource realBufferedSource = derReader.source;
                long bytesLeft = derReader.getBytesLeft();
                if (1 <= bytesLeft && bytesLeft < 9) {
                    long readByte = realBufferedSource.readByte();
                    while (derReader.getByteCount() < derReader.limit) {
                        readByte = (readByte << 8) + (realBufferedSource.readByte() & 255);
                    }
                    return Long.valueOf(readByte);
                }
                throw new ProtocolException("unexpected length: " + derReader.getBytesLeft() + " at " + derReader);
            case 9:
                derReader.getClass();
                if (derReader.getBytesLeft() == -1 || derReader.constructed) {
                    throw new ProtocolException("constructed octet strings not supported for DER");
                }
                return derReader.source.readByteString(derReader.getBytesLeft());
            default:
                derReader.getClass();
                return derReader.readUtf8String();
        }
    }

    @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
    public void encode(Latch latch, Object obj) {
        switch (this.$r8$classId) {
            case 7:
                long longValue = ((Number) obj).longValue();
                latch.getClass();
                BasicDerAdapter basicDerAdapter = Adapters.BOOLEAN;
                TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
                simpleDateFormat.setTimeZone(timeZone);
                String format = simpleDateFormat.format(Long.valueOf(longValue));
                format.getClass();
                latch.sink().writeUtf8(format);
                break;
            case 8:
                long longValue2 = ((Number) obj).longValue();
                latch.getClass();
                BufferedSink sink = latch.sink();
                int numberOfLeadingZeros = ((((65 - (longValue2 < 0 ? Long.numberOfLeadingZeros(~longValue2) : Long.numberOfLeadingZeros(longValue2))) + 7) / 8) - 1) * 8;
                int progressionLastElement = ContextsKt.getProgressionLastElement(numberOfLeadingZeros, 0, -8);
                if (progressionLastElement <= numberOfLeadingZeros) {
                    while (true) {
                        sink.writeByte((int) (longValue2 >> numberOfLeadingZeros));
                        if (numberOfLeadingZeros == progressionLastElement) {
                            break;
                        } else {
                            numberOfLeadingZeros -= 8;
                        }
                    }
                }
                break;
            case 9:
                ByteString byteString = (ByteString) obj;
                latch.getClass();
                byteString.getClass();
                latch.sink().write(byteString);
                break;
            default:
                String str = (String) obj;
                latch.getClass();
                str.getClass();
                latch.sink().writeUtf8(str);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getLoginToken(org.wikipedia.dataclient.WikiSite r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.wikipedia.login.LoginClient$getLoginToken$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.login.LoginClient$getLoginToken$1 r0 = (org.wikipedia.login.LoginClient$getLoginToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.login.LoginClient$getLoginToken$1 r0 = new org.wikipedia.login.LoginClient$getLoginToken$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r4)
            goto L40
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r4)
            org.wikipedia.dataclient.ServiceFactory r4 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.Service r4 = org.wikipedia.dataclient.ServiceFactory.get(r5)
            r0.label = r3
            java.lang.Object r4 = r4.getLoginToken(r0)
            if (r4 != r6) goto L40
            return r6
        L40:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r4 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r4
            org.wikipedia.dataclient.mwapi.MwQueryResult r4 = r4.query
            if (r4 == 0) goto L51
            org.wikipedia.dataclient.mwapi.MwQueryResult$Tokens r4 = r4.tokens
            if (r4 == 0) goto L4d
            java.lang.String r4 = r4.login
            goto L4e
        L4d:
            r4 = r2
        L4e:
            if (r4 == 0) goto L51
            return r4
        L51:
            java.lang.String r4 = "Received empty login token."
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient.getLoginToken(org.wikipedia.dataclient.WikiSite, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object, java.lang.String, org.wikipedia.dataclient.WikiSite] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object loginBlocking(org.wikipedia.dataclient.WikiSite r20, java.lang.String r21, java.lang.String r22, kotlin.coroutines.jvm.internal.ContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient.loginBlocking(org.wikipedia.dataclient.WikiSite, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
    public boolean matchesSocket(SSLSocket sSLSocket) {
        return StringsKt__StringsJVMKt.startsWith(sSLSocket.getClass().getName(), "com.google.android.gms.org.conscrypt.", false);
    }

    public static Intent newIntent(Context context) {
        Intent intent = new Intent("org.wikipedia.resume_reading").setClass(context, PageActivity.class);
        intent.getClass();
        return intent;
    }

    public static Intent newIntent$default(Context context, String str, PageTitle pageTitle, String str2, int i) {
        int i2 = SingleWebViewActivity.$r8$clinit;
        boolean z = (i & 4) == 0;
        if ((i & 8) != 0) {
            pageTitle = null;
        }
        if ((i & 16) != 0) {
            str2 = null;
        }
        boolean z2 = (i & 32) == 0;
        context.getClass();
        Intent putExtra = new Intent(context, (Class<?>) SingleWebViewActivity.class).putExtra("url", str).putExtra("goBack", z).putExtra("title", pageTitle).putExtra("pageContentInfo", str2).putExtra("isWebForm", z2);
        putExtra.getClass();
        return putExtra;
    }

    public static /* synthetic */ Intent newIntent$default(Context context, int i, String str, PageTitle pageTitle, Constants.InvokeSource invokeSource, String str2, int i2) {
        if ((i2 & 32) != 0) {
            str2 = null;
        }
        return newIntent(context, i, str, pageTitle, invokeSource, str2, null, "", "");
    }
}
