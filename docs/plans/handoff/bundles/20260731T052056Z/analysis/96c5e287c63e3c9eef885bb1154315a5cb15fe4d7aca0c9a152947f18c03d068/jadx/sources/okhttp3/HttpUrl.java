package okhttp3;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import android.view.View;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.request.ImageRequest;
import coil3.util.UtilsKt;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.XorWowRandom;
import kotlin.ranges.IntProgression;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.internal.ZipFilesKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.HomeViewModelKt;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda1;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HttpUrl {
    public final String fragment;
    public final String host;
    public final String password;
    public final ArrayList pathSegments;
    public final int port;
    public final List queryNamesAndValues;
    public final String scheme;
    public final String url;
    public final String username;

    public HttpUrl(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        this.scheme = str;
        this.username = str2;
        this.password = str3;
        this.host = str4;
        this.port = i;
        this.pathSegments = arrayList;
        this.queryNamesAndValues = arrayList2;
        this.fragment = str5;
        this.url = str6;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return str.substring(StringsKt.indexOf$default(str, ':', length, 4) + 1, StringsKt.indexOf$default(str, '@', 0, 6));
    }

    public final String encodedPath() {
        int length = this.scheme.length() + 3;
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default(str, '/', length, 4);
        return str.substring(indexOf$default, _UtilCommonKt.delimiterOffset(indexOf$default, str.length(), str, "?#"));
    }

    public final ArrayList encodedPathSegments() {
        int length = this.scheme.length() + 3;
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default(str, '/', length, 4);
        int delimiterOffset = _UtilCommonKt.delimiterOffset(indexOf$default, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf$default < delimiterOffset) {
            int i = indexOf$default + 1;
            int delimiterOffset2 = _UtilCommonKt.delimiterOffset(str, '/', i, delimiterOffset);
            arrayList.add(str.substring(i, delimiterOffset2));
            indexOf$default = delimiterOffset2;
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        String str = this.url;
        int indexOf$default = StringsKt.indexOf$default(str, '?', 0, 6) + 1;
        return str.substring(indexOf$default, _UtilCommonKt.delimiterOffset(str, '#', indexOf$default, str.length()));
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return str.substring(length, _UtilCommonKt.delimiterOffset(length, str.length(), str, ":@"));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public final int hashCode() {
        return this.url.hashCode();
    }

    public final boolean isHttps() {
        return Intrinsics.areEqual(this.scheme, "https");
    }

    public final Builder newBuilder() {
        Builder builder = new Builder(0);
        ArrayList arrayList = (ArrayList) builder.encodedPathSegments;
        String str = this.scheme;
        builder.scheme = str;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        str.getClass();
        int i = str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
        int i2 = this.port;
        builder.port = i2 != i ? i2 : -1;
        arrayList.clear();
        arrayList.addAll(encodedPathSegments());
        String encodedQuery = encodedQuery();
        String str2 = null;
        builder.encodedQueryNamesAndValues = encodedQuery != null ? Builder.toQueryNamesAndValues(_UrlKt.canonicalize$default(0, 0, 83, encodedQuery, " \"'<>#")) : null;
        if (this.fragment != null) {
            String str3 = this.url;
            str2 = str3.substring(StringsKt.indexOf$default(str3, '#', 0, 6) + 1);
        }
        builder.encodedFragment = str2;
        return builder;
    }

    public final String redact() {
        Builder builder;
        try {
            builder = new Builder(0);
            builder.parse$okhttp(this, "/...");
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        builder.getClass();
        builder.encodedUsername = _UrlKt.canonicalize$default(0, 0, 123, "", " \"':;<=>@[]^`{}|/\\?#");
        builder.encodedPassword = _UrlKt.canonicalize$default(0, 0, 123, "", " \"':;<=>@[]^`{}|/\\?#");
        return builder.m872build().url;
    }

    public final String toString() {
        return this.url;
    }

    public final URI uri() {
        String str;
        Builder newBuilder = newBuilder();
        ArrayList arrayList = (ArrayList) newBuilder.encodedPathSegments;
        String str2 = (String) newBuilder.host;
        if (str2 != null) {
            Pattern compile = Pattern.compile("[\"<>^`{|}]");
            compile.getClass();
            str = compile.matcher(str2).replaceAll("");
            str.getClass();
        } else {
            str = null;
        }
        newBuilder.host = str;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.set(i, _UrlKt.canonicalize$default(0, 0, 99, (String) arrayList.get(i), "[]"));
        }
        ArrayList arrayList2 = (ArrayList) newBuilder.encodedQueryNamesAndValues;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str3 = (String) arrayList2.get(i2);
                arrayList2.set(i2, str3 != null ? _UrlKt.canonicalize$default(0, 0, 67, str3, "\\^`{|}") : null);
            }
        }
        String str4 = (String) newBuilder.encodedFragment;
        newBuilder.encodedFragment = str4 != null ? _UrlKt.canonicalize$default(0, 0, 35, str4, " \"#<>\\^`{|}") : null;
        String builder = newBuilder.toString();
        try {
            return new URI(builder);
        } catch (URISyntaxException e) {
            try {
                Pattern compile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                compile2.getClass();
                String replaceAll = compile2.matcher(builder).replaceAll("");
                replaceAll.getClass();
                URI create = URI.create(replaceAll);
                create.getClass();
                return create;
            } catch (Exception unused) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final /* synthetic */ int $r8$classId;
        public Object encodedFragment;
        public Serializable encodedPassword;
        public Object encodedPathSegments;
        public Object encodedQueryNamesAndValues;
        public Serializable encodedUsername;
        public Object host;
        public int port;
        public Object scheme;

        public Builder(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 1:
                    break;
                default:
                    this.encodedUsername = "";
                    this.encodedPassword = "";
                    this.port = -1;
                    this.encodedPathSegments = Room.mutableListOf("");
                    break;
            }
        }

        public static boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public static ArrayList toQueryNamesAndValues(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int indexOf$default = StringsKt.indexOf$default(str, '&', i, 4);
                if (indexOf$default == -1) {
                    indexOf$default = str.length();
                }
                int indexOf$default2 = StringsKt.indexOf$default(str, '=', i, 4);
                if (indexOf$default2 == -1 || indexOf$default2 > indexOf$default) {
                    arrayList.add(str.substring(i, indexOf$default));
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i, indexOf$default2));
                    arrayList.add(str.substring(indexOf$default2 + 1, indexOf$default));
                }
                i = indexOf$default + 1;
            }
            return arrayList;
        }

        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.material.shape.ShapeAppearanceModel[], java.io.Serializable, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v0, types: [int[][], java.io.Serializable, java.lang.Object] */
        public void addStateShapeAppearanceModel(int[] iArr, ShapeAppearanceModel shapeAppearanceModel) {
            int i = this.port;
            if (i == 0 || iArr.length == 0) {
                this.scheme = shapeAppearanceModel;
            }
            int[][] iArr2 = (int[][]) this.encodedUsername;
            if (i >= iArr2.length) {
                int i2 = i + 10;
                ?? r3 = new int[i2][];
                System.arraycopy(iArr2, 0, r3, 0, i);
                this.encodedUsername = r3;
                ?? r1 = new ShapeAppearanceModel[i2];
                System.arraycopy((ShapeAppearanceModel[]) this.encodedPassword, 0, r1, 0, i);
                this.encodedPassword = r1;
            }
            int[][] iArr3 = (int[][]) this.encodedUsername;
            int i3 = this.port;
            iArr3[i3] = iArr;
            ((ShapeAppearanceModel[]) this.encodedPassword)[i3] = shapeAppearanceModel;
            this.port = i3 + 1;
        }

        /* renamed from: build, reason: collision with other method in class */
        public HttpUrl m872build() {
            ArrayList arrayList;
            String str = (String) this.scheme;
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("scheme == null");
                return null;
            }
            String percentDecode$default = _UrlKt.percentDecode$default(0, 0, 7, (String) this.encodedUsername);
            String percentDecode$default2 = _UrlKt.percentDecode$default(0, 0, 7, (String) this.encodedPassword);
            String str2 = (String) this.host;
            if (str2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("host == null");
                return null;
            }
            int effectivePort = effectivePort();
            ArrayList arrayList2 = (ArrayList) this.encodedPathSegments;
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(_UrlKt.percentDecode$default(0, 0, 7, (String) it.next()));
            }
            ArrayList<String> arrayList4 = (ArrayList) this.encodedQueryNamesAndValues;
            if (arrayList4 != null) {
                ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList4, 10));
                for (String str3 : arrayList4) {
                    arrayList5.add(str3 != null ? _UrlKt.percentDecode$default(0, 0, 3, str3) : null);
                }
                arrayList = arrayList5;
            } else {
                arrayList = null;
            }
            String str4 = (String) this.encodedFragment;
            return new HttpUrl(str, percentDecode$default, percentDecode$default2, str2, effectivePort, arrayList3, arrayList, str4 != null ? _UrlKt.percentDecode$default(0, 0, 7, str4) : null, toString());
        }

        public int effectivePort() {
            int i = this.port;
            if (i != -1) {
                return i;
            }
            String str = (String) this.scheme;
            str.getClass();
            if (str.equals("http")) {
                return 80;
            }
            return str.equals("https") ? 443 : -1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.material.shape.ShapeAppearanceModel[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r1v0, types: [int[][], java.io.Serializable] */
        public void initialize() {
            this.scheme = new ShapeAppearanceModel();
            this.encodedUsername = new int[10][];
            this.encodedPassword = new ShapeAppearanceModel[10];
        }

        /* JADX WARN: Code restructure failed: missing block: B:140:0x01f7, code lost:
        
            if (r8 < 65536) goto L123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:210:0x0079, code lost:
        
            if (r14 == ':') goto L37;
         */
        /* JADX WARN: Removed duplicated region for block: B:118:0x01b9  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x01dd  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x024d  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x0324  */
        /* JADX WARN: Removed duplicated region for block: B:153:0x0220  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x01d5 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:167:0x0144  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x013f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void parse$okhttp(okhttp3.HttpUrl r18, java.lang.String r19) {
            /*
                Method dump skipped, instructions count: 864
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.parse$okhttp(okhttp3.HttpUrl, java.lang.String):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00a9, code lost:
        
            if (r1 != r3) goto L38;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        public Builder(ShapeAppearanceModel shapeAppearanceModel) {
            this.$r8$classId = 1;
            initialize();
            addStateShapeAppearanceModel(StateSet.WILD_CARD, shapeAppearanceModel);
        }

        public StateListShapeAppearanceModel build() {
            if (this.port == 0) {
                return null;
            }
            return new StateListShapeAppearanceModel(this);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v2, types: [int] */
        /* JADX WARN: Type inference failed for: r1v25 */
        public static final void NewsItemContent(NewsItem newsItem, Function1 function1, GapComposer gapComposer, int i) {
            ?? r1;
            GapComposer gapComposer2;
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
            float f;
            Modifier.Companion companion;
            BiasAlignment biasAlignment;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13;
            String str;
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
            float f2;
            boolean z;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1;
            boolean z2;
            GapComposer gapComposer3;
            boolean z3;
            boolean z4;
            GapComposer gapComposer4;
            long Color;
            ImageRequest build;
            GapComposer gapComposer5 = gapComposer;
            BiasAlignment biasAlignment2 = Alignment.Companion.BottomStart;
            newsItem.getClass();
            String str2 = newsItem.story;
            gapComposer5.startRestartGroup(1494804525);
            int i2 = i | (gapComposer5.changedInstance(newsItem) ? 4 : 2) | (gapComposer5.changedInstance(function1) ? 32 : 16);
            if (gapComposer5.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
                Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion2, 1.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7);
                boolean changedInstance = ((i2 & 112) == 32) | gapComposer5.changedInstance(newsItem);
                Object rememberedValue = gapComposer5.rememberedValue();
                if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new Regex$$ExternalSyntheticLambda0(22, function1, newsItem);
                    gapComposer5.updateRememberedValue(rememberedValue);
                }
                Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, m136paddingqDBjuR0$default, null, (Function0) rememberedValue, false);
                BiasAlignment biasAlignment3 = Alignment.Companion.TopStart;
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment3, false);
                long j = gapComposer5.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer5.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer5, m51clickableoSLSa3U$default);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                gapComposer5.startReusableNode();
                if (gapComposer5.inserting) {
                    gapComposer5.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer5.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$15);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer5, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$16);
                Integer valueOf = Integer.valueOf(i3);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer5, valueOf, composeUiNode$Companion$SetModifier$17);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$12);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer5, materializeModifier, composeUiNode$Companion$SetModifier$18);
                String thumbUrl = newsItem.thumbUrl();
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$12 = ColorKt.RectangleShape;
                if (thumbUrl == null || thumbUrl.length() == 0) {
                    layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                    f = 16.0f;
                    companion = companion2;
                    biasAlignment = biasAlignment3;
                    composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$16;
                    composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$17;
                    composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$15;
                    str = str2;
                    ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                    f2 = 1.0f;
                    z = false;
                    composeUiNode$Companion$SetModifier$14 = composeUiNode$Companion$SetModifier$18;
                    rectangleShapeKt$RectangleShape$1 = rectangleShapeKt$RectangleShape$12;
                    gapComposer5.startReplaceGroup(-1365247792);
                    List list = HomeViewModelKt.noImageCardBackgroundColors;
                    int hashCode = str.hashCode();
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 415.0f), TuplesKt.colorResource(((Number) CollectionsKt.random(list, new XorWowRandom(hashCode, hashCode >> 31))).intValue(), gapComposer5), rectangleShapeKt$RectangleShape$1), gapComposer5, 0);
                    gapComposer5.end(false);
                } else {
                    gapComposer5.startReplaceGroup(-1364995297);
                    String thumbUrl2 = newsItem.thumbUrl();
                    if (thumbUrl2 == null) {
                        gapComposer5.startReplaceGroup(-1364937669);
                        gapComposer5.end(false);
                        build = null;
                    } else {
                        gapComposer5.startReplaceGroup(-1364937668);
                        Context context = (Context) gapComposer5.consume(AndroidCompositionLocals_androidKt.LocalContext);
                        Boolean bool = Boolean.FALSE;
                        context.getClass();
                        build = Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, thumbUrl2, bool, bool, null, null).build() : null;
                        gapComposer5.end(false);
                    }
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$17;
                    composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$15;
                    composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$16;
                    layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                    f = 16.0f;
                    companion = companion2;
                    biasAlignment = biasAlignment3;
                    ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                    str = str2;
                    composeUiNode$Companion$SetModifier$14 = composeUiNode$Companion$SetModifier$18;
                    rectangleShapeKt$RectangleShape$1 = rectangleShapeKt$RectangleShape$12;
                    f2 = 1.0f;
                    TabsBoxKt.FadeInAsyncImage(build, newsItem.story, SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion2, 1.0f), 415.0f), ContentScale.Companion.Crop, new ColorPainter(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal)).backgroundColor), new ColorPainter(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal)).backgroundColor), 0, 0, gapComposer5, 298368);
                    z = false;
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 415.0f), ColorKt.Color(0, 0, 0, 100), rectangleShapeKt$RectangleShape$1), gapComposer5, 6);
                    gapComposer5.end(false);
                }
                if (str.length() > 0) {
                    gapComposer5.startReplaceGroup(-1364266797);
                    String thumbUrl3 = newsItem.thumbUrl();
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    if (thumbUrl3 == null || thumbUrl3.length() == 0) {
                        z3 = z;
                        String str3 = str;
                        gapComposer5.startReplaceGroup(-1364222994);
                        Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(boxScopeInstance.align(companion, biasAlignment2), f2), 32.0f);
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        Pattern compile = Pattern.compile("<i.*?>(.*?)</i>");
                        compile.getClass();
                        String replaceAll = compile.matcher(str3).replaceAll("");
                        replaceAll.getClass();
                        z4 = true;
                        TextKt.m308TextNvy7gAk(StringUtil.fromHtml(replaceAll).toString(), m132padding3ABfNKs, Color.White, null, 0L, null, null, 0L, null, 0L, 2, false, 8, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer, 384, 24960, 110584);
                        GapComposer gapComposer6 = gapComposer;
                        gapComposer6.end(z3);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer5.startReplaceGroup(-1363703961);
                        Modifier clip = ClipKt.clip(OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(boxScopeInstance.align(companion, biasAlignment2), f2), f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f));
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                        Color = ColorKt.Color(Color.m433getRedimpl(r6), Color.m432getGreenimpl(r6), Color.m430getBlueimpl(r6), 0.92f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal2)).paperColor));
                        Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(clip, Color, rectangleShapeKt$RectangleShape$1), f);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, z);
                        long j2 = gapComposer5.compositeKeyHashCode;
                        int i4 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer5.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer5, m132padding3ABfNKs2);
                        gapComposer5.startReusableNode();
                        if (gapComposer5.inserting) {
                            gapComposer5.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer5.useNode();
                        }
                        Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$13);
                        Updater.m327setimpl(gapComposer5, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$1);
                        Animation.CC.m(i4, gapComposer5, composeUiNode$Companion$SetModifier$12, gapComposer5, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer5, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                        Pattern compile2 = Pattern.compile("<i.*?>(.*?)</i>");
                        compile2.getClass();
                        String replaceAll2 = compile2.matcher(str).replaceAll("");
                        replaceAll2.getClass();
                        z3 = z;
                        z4 = true;
                        TextKt.m308TextNvy7gAk(StringUtil.fromHtml(replaceAll2).toString(), null, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 2, false, 4, 0, null, ((Typography) gapComposer5.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer, 0, 24960, 110586);
                        GapComposer gapComposer7 = gapComposer;
                        gapComposer7.end(true);
                        gapComposer7.end(z3);
                        gapComposer4 = gapComposer7;
                    }
                    gapComposer4.end(z3);
                    z2 = z4;
                    gapComposer3 = gapComposer4;
                } else {
                    z2 = true;
                    gapComposer5.startReplaceGroup(-1362906021);
                    gapComposer5.end(z);
                    gapComposer3 = gapComposer5;
                }
                gapComposer3.end(z2);
                r1 = z2;
                gapComposer2 = gapComposer3;
            } else {
                r1 = 1;
                gapComposer5.skipToGroupEnd();
                gapComposer2 = gapComposer5;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(newsItem, function1, i, r1);
            }
        }

        public static final void NewsModule(WikiSite wikiSite, List list, Function1 function1, Function0 function0, Function0 function02, Function0 function03, GapComposer gapComposer, int i) {
            wikiSite.getClass();
            list.getClass();
            gapComposer.startRestartGroup(733793920);
            int i2 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function02) ? 16384 : 8192) | (gapComposer.changedInstance(function03) ? 131072 : 65536);
            if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
                boolean changedInstance = gapComposer.changedInstance(list);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new Handshake$Companion$$ExternalSyntheticLambda0(list, 4);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                int i3 = ((i2 << 3) & 112) | 805306368;
                int i4 = i2 << 9;
                ForYouCardKt.m906CommunityModuleContainerYod850M(null, wikiSite, R.string.view_card_news_title, R.string.explore_feed_in_the_news_subtitle, null, 0L, function0, function02, function03, Expect_jvmKt.rememberComposableLambda(2040375566, new NewsModuleKt$$ExternalSyntheticLambda1(PagerStateKt.rememberPagerState((Function0) rememberedValue, gapComposer, 0, 3), list, function1), gapComposer), gapComposer, i3 | (3670016 & i4) | (29360128 & i4) | (i4 & 234881024), 49);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(wikiSite, list, function1, function0, function02, function03, i, 0);
            }
        }

        public static ArrayList allTypesIdList() {
            NotificationCategory.Companion.getClass();
            List list = NotificationCategory.FILTERS_GROUP;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((NotificationCategory) it.next()).getId());
            }
            return arrayList;
        }

        public static ArrayList allWikisList() {
            ArrayList arrayList = new ArrayList();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            arrayList.addAll(Jsoup.getInstance().getLanguageState().getAppLanguageCodes());
            arrayList.add("commons");
            arrayList.add("wikidata");
            return arrayList;
        }

        public static final boolean arrayRangeEquals(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
            bArr.getClass();
            bArr2.getClass();
            for (int i4 = 0; i4 < i3; i4++) {
                if (bArr[i4 + i] != bArr2[i4 + i2]) {
                    return false;
                }
            }
            return true;
        }

        public static final void checkOffsetAndCount(long j, long j2, long j3) {
            if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
                throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
            }
        }

        public static Bitmap getBitmapFromDrawable(Drawable drawable) {
            if (drawable == null) {
                return null;
            }
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return null;
            }
            Drawable mutate = constantState.newDrawable().mutate();
            Bitmap createBitmap = Bitmap.createBitmap(mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            mutate.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            mutate.draw(canvas);
            return createBitmap;
        }

        public static Drawable getDrawableFromRes(Context context, int i, Integer num) {
            Drawable drawable = context.getDrawable(i);
            if (drawable == null) {
                return null;
            }
            if (num == null) {
                return drawable;
            }
            drawable.setTint(num.intValue());
            return drawable;
        }

        public static int getIntTag(View view) {
            if (view.getTag() == null || !(view.getTag() instanceof Integer)) {
                return 0;
            }
            Object tag = view.getTag();
            tag.getClass();
            return ((Integer) tag).intValue();
        }

        public static Intent newIntent(Context context, String str) {
            Intent putExtra = new Intent(context, (Class<?>) UserContribListActivity.class).putExtra("userName", str);
            putExtra.getClass();
            return putExtra;
        }

        public static List parse(String str, WikiSite wikiSite) {
            str.getClass();
            wikiSite.getClass();
            try {
                Document parse = Jsoup.parse(str);
                parse.getClass();
                Elements select = Cache.Companion.select("link[rel=stylesheet]", parse);
                select.getClass();
                Elements select2 = Cache.Companion.select("script", parse);
                select2.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(select, 10));
                Iterator it = select.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Element) it.next()).attr("href"));
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(select2, 10));
                Iterator it2 = select2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((Element) it2.next()).attr("src"));
                }
                ArrayList flatten = CollectionsKt__IteratorsJVMKt.flatten(Room.listOf((Object[]) new List[]{arrayList, arrayList2}));
                ArrayList arrayList3 = new ArrayList();
                Iterator it3 = flatten.iterator();
                while (it3.hasNext()) {
                    Object next = it3.next();
                    String str2 = (String) next;
                    str2.getClass();
                    if (str2.length() > 0) {
                        arrayList3.add(next);
                    }
                }
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
                Iterator it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    String str3 = (String) it4.next();
                    str3.getClass();
                    arrayList4.add(UriUtil.resolveProtocolRelativeUrl(str3, wikiSite));
                }
                return arrayList4;
            } catch (Exception e) {
                L.d("Parsing exception" + e);
                return EmptyList.INSTANCE;
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(25:0|1|(1:3)(1:47)|4|(2:44|(18:46|7|(1:9)|10|(1:41)(1:14)|(2:16|(12:18|19|20|21|22|23|24|25|26|27|28|29))|40|19|20|21|22|23|24|25|26|27|28|29))|6|7|(0)|10|(1:12)|41|(0)|40|19|20|21|22|23|24|25|26|27|28|29|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00d7, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00e1, code lost:
        
            org.wikipedia.util.log.L.w(r0);
            r0 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d9, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00da, code lost:
        
            r18 = r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00dd, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00de, code lost:
        
            r16 = 0;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0068  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.String setUp(android.content.Context r17, org.wikipedia.page.PageTitle r18, boolean r19, int r20, int r21) {
            /*
                Method dump skipped, instructions count: 361
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Companion.setUp(android.content.Context, org.wikipedia.page.PageTitle, boolean, int, int):java.lang.String");
        }

        public static final String toHexString(int i) {
            if (i == 0) {
                return "0";
            }
            char[] cArr = ZipFilesKt.HEX_DIGIT_CHARS;
            int i2 = 0;
            char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
            while (i2 < 8 && cArr2[i2] == '0') {
                i2++;
            }
            UtilsKt.checkBoundsIndexes$kotlin_stdlib(i2, 8, 8);
            return new String(cArr2, i2, 8 - i2);
        }

        public static void toQueryString(StringBuilder sb, List list) {
            IntProgression step = RegexKt.step(2, RegexKt.until(0, list.size()));
            int i = step.first;
            int i2 = step.last;
            int i3 = step.step;
            if ((i3 <= 0 || i > i2) && (i3 >= 0 || i2 > i)) {
                return;
            }
            while (true) {
                String str = (String) list.get(i);
                String str2 = (String) list.get(i + 1);
                if (i > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (i == i2) {
                    return;
                } else {
                    i += i3;
                }
            }
        }

        public static final String toHexString(byte b) {
            char[] cArr = ZipFilesKt.HEX_DIGIT_CHARS;
            return new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]});
        }
    }
}
