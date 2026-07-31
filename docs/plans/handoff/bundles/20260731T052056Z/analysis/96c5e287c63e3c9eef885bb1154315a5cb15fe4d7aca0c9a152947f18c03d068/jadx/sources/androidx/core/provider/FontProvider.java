package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import androidx.collection.LruCache;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0;
import androidx.core.content.res.CamUtils;
import androidx.core.graphics.TypefaceCompat;
import com.google.android.flexbox.FlexboxHelper$FlexLinesResult;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.TuplesKt;
import org.wikipedia.util.GeoUtil$$ExternalSyntheticApiModelOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FontProvider {
    public static final LruCache sProviderCache = new LruCache(2);
    public static final LayoutNode$$ExternalSyntheticLambda0 sByteArrayComparator = new LayoutNode$$ExternalSyntheticLambda0(5);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ContentQueryWrapperApi16Impl {
        public final /* synthetic */ int $r8$classId;
        public final ContentProviderClient mClient;

        public ContentQueryWrapperApi16Impl(Context context, Uri uri, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 1:
                    this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                    break;
                default:
                    this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void close() {
            int i = this.$r8$classId;
            ContentProviderClient contentProviderClient = this.mClient;
            switch (i) {
                case 0:
                    if (contentProviderClient != 0) {
                        contentProviderClient.release();
                        break;
                    }
                    break;
                default:
                    if (contentProviderClient != 0) {
                        if (!(contentProviderClient instanceof AutoCloseable)) {
                            if (!(contentProviderClient instanceof ExecutorService)) {
                                contentProviderClient.release();
                                break;
                            } else {
                                GeoUtil$$ExternalSyntheticApiModelOutline0.m$1((ExecutorService) contentProviderClient);
                                break;
                            }
                        } else {
                            contentProviderClient.close();
                            break;
                        }
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ProviderCacheKey {
        public String mAuthority;
        public List mCertificates;
        public String mPackageName;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProviderCacheKey)) {
                return false;
            }
            ProviderCacheKey providerCacheKey = (ProviderCacheKey) obj;
            return Objects.equals(this.mAuthority, providerCacheKey.mAuthority) && Objects.equals(this.mPackageName, providerCacheKey.mPackageName) && Objects.equals(this.mCertificates, providerCacheKey.mCertificates);
        }

        public final int hashCode() {
            return Objects.hash(this.mAuthority, this.mPackageName, this.mCertificates);
        }
    }

    public static FlexboxHelper$FlexLinesResult getFontFamilyResult(Context context, List list) {
        String str;
        Typeface systemFontFamily;
        Trace.beginSection(TuplesKt.truncatedTraceSectionLabel("FontProvider.getFontFamilyResult"));
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                FontRequest fontRequest = (FontRequest) list.get(i);
                if (Build.VERSION.SDK_INT < 31 || (systemFontFamily = TypefaceCompat.getSystemFontFamily((str = fontRequest.mSystemFont))) == null || TypefaceCompat.guessPrimaryFont(systemFontFamily) == null) {
                    ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
                    if (provider == null) {
                        FlexboxHelper$FlexLinesResult flexboxHelper$FlexLinesResult = new FlexboxHelper$FlexLinesResult();
                        flexboxHelper$FlexLinesResult.mChildState = 1;
                        flexboxHelper$FlexLinesResult.mFlexLines = Collections.singletonList(null);
                        return flexboxHelper$FlexLinesResult;
                    }
                    arrayList.add(query(context, fontRequest, provider.authority));
                } else {
                    arrayList.add(new FontsContractCompat$FontInfo[]{new FontsContractCompat$FontInfo(str, fontRequest.mVariationSettings)});
                }
            }
            FlexboxHelper$FlexLinesResult flexboxHelper$FlexLinesResult2 = new FlexboxHelper$FlexLinesResult();
            flexboxHelper$FlexLinesResult2.mChildState = 0;
            flexboxHelper$FlexLinesResult2.mFlexLines = arrayList;
            return flexboxHelper$FlexLinesResult2;
        } finally {
            Trace.endSection();
        }
    }

    public static ProviderInfo getProvider(PackageManager packageManager, FontRequest fontRequest, Resources resources) {
        LayoutNode$$ExternalSyntheticLambda0 layoutNode$$ExternalSyntheticLambda0 = sByteArrayComparator;
        LruCache lruCache = sProviderCache;
        Trace.beginSection(TuplesKt.truncatedTraceSectionLabel("FontProvider.getProvider"));
        try {
            List list = fontRequest.mCertificates;
            String str = fontRequest.mProviderAuthority;
            String str2 = fontRequest.mProviderPackage;
            if (list == null) {
                list = CamUtils.readCerts(resources, 0);
            }
            ProviderCacheKey providerCacheKey = new ProviderCacheKey();
            providerCacheKey.mAuthority = str;
            providerCacheKey.mPackageName = str2;
            providerCacheKey.mCertificates = list;
            ProviderInfo providerInfo = (ProviderInfo) lruCache.get(providerCacheKey);
            if (providerInfo != null) {
                return providerInfo;
            }
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!resolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, layoutNode$$ExternalSyntheticLambda0);
            for (int i = 0; i < list.size(); i++) {
                ArrayList arrayList2 = new ArrayList((Collection) list.get(i));
                Collections.sort(arrayList2, layoutNode$$ExternalSyntheticLambda0);
                if (arrayList.size() == arrayList2.size()) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                            break;
                        }
                    }
                    lruCache.put(providerCacheKey, resolveContentProvider);
                    return resolveContentProvider;
                }
            }
            Trace.endSection();
            return null;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00d5 A[Catch: all -> 0x0114, TryCatch #0 {all -> 0x0114, blocks: (B:26:0x00d0, B:28:0x00d5, B:30:0x00db, B:31:0x0104, B:35:0x010d, B:37:0x011b, B:39:0x0126, B:42:0x013c, B:45:0x0148, B:48:0x0153, B:52:0x0131), top: B:25:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0163 A[Catch: all -> 0x0185, TRY_ENTER, TryCatch #1 {all -> 0x0185, blocks: (B:3:0x0011, B:5:0x0046, B:58:0x0163, B:59:0x0166, B:66:0x017e, B:67:0x0181, B:68:0x0184, B:90:0x004c), top: B:2:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.provider.FontsContractCompat$FontInfo[] query(android.content.Context r22, androidx.core.provider.FontRequest r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.provider.FontProvider.query(android.content.Context, androidx.core.provider.FontRequest, java.lang.String):androidx.core.provider.FontsContractCompat$FontInfo[]");
    }
}
