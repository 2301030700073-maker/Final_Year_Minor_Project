package coil3.size;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.fragment.app.Fragment;
import androidx.glance.CombinedGlanceModifier;
import androidx.glance.GlanceModifier;
import androidx.glance.appwidget.BoxChildSelector;
import androidx.glance.appwidget.ContainerInfo;
import androidx.glance.appwidget.ContainerSelector;
import androidx.glance.appwidget.LayoutInfo;
import androidx.glance.appwidget.RowColumnChildSelector;
import androidx.glance.unit.ResourceColorProvider;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.preference.PreferenceManager;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteConnection;
import coil3.size.Dimension;
import com.caverock.androidsvg.SVGParser;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.ConnectionPool;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerAdapter;
import okio.Buffer;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.GeoUtil$$ExternalSyntheticApiModelOutline0;
import org.wikipedia.util.Resource;
import org.xml.sax.Attributes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: coil3.size.ViewSizeResolver$-CC, reason: invalid class name */
/* loaded from: classes.dex */
public abstract /* synthetic */ class ViewSizeResolver$CC {
    public static BasicDerAdapter $default$asSequenceOf(DerAdapter derAdapter, String str, long j) {
        return new BasicDerAdapter(str, 0, j, new ConnectionPool(17, derAdapter), false, null, false);
    }

    public static ViewModel $default$create(ViewModelProvider$Factory viewModelProvider$Factory, KClass kClass, MutableCreationExtras mutableCreationExtras) {
        kClass.getClass();
        return viewModelProvider$Factory.create(UnsignedKt.getJavaClass(kClass), mutableCreationExtras);
    }

    public static void $default$onPostMigrate(AutoMigrationSpec autoMigrationSpec, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        if (sQLiteConnection instanceof SupportSQLiteConnection) {
            autoMigrationSpec.onPostMigrate(((SupportSQLiteConnection) sQLiteConnection).db);
        }
    }

    public static GlanceModifier $default$then(GlanceModifier glanceModifier, GlanceModifier glanceModifier2) {
        return glanceModifier2 == GlanceModifier.Companion.$$INSTANCE ? glanceModifier : new CombinedGlanceModifier(glanceModifier, glanceModifier2);
    }

    public static ByteString $default$toDer(DerAdapter derAdapter, Object obj) {
        Buffer buffer = new Buffer();
        derAdapter.toDer(new Latch(buffer), obj);
        return buffer.readByteString(buffer.size);
    }

    public static BasicDerAdapter $default$withExplicitBox(DerAdapter derAdapter, int i, long j, Boolean bool) {
        return new BasicDerAdapter("EXPLICIT", i, j, new FormBody.Builder(23, derAdapter, bool, false), false, null, false);
    }

    public static Dimension $private$getDimension(int i, int i2, int i3) {
        if (i == -2) {
            return Dimension.Undefined.INSTANCE;
        }
        int i4 = i - i3;
        if (i4 > 0) {
            Dimension.Pixels.m784constructorimpl(i4);
            return new Dimension.Pixels(i4);
        }
        int i5 = i2 - i3;
        if (i5 <= 0) {
            return null;
        }
        Dimension.Pixels.m784constructorimpl(i5);
        return new Dimension.Pixels(i5);
    }

    public static Size $private$getSize(RealViewSizeResolver realViewSizeResolver) {
        View view = realViewSizeResolver.view;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Dimension $private$getDimension = $private$getDimension(layoutParams != null ? layoutParams.width : -1, view.getWidth(), view.getPaddingRight() + view.getPaddingLeft());
        if ($private$getDimension == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        Dimension $private$getDimension2 = $private$getDimension(layoutParams2 != null ? layoutParams2.height : -1, view.getHeight(), view.getPaddingBottom() + view.getPaddingTop());
        if ($private$getDimension2 == null) {
            return null;
        }
        return new Size($private$getDimension, $private$getDimension2);
    }

    public static /* synthetic */ void m(Object obj) {
        if (obj instanceof AutoCloseable) {
            ((AutoCloseable) obj).close();
            return;
        }
        if (obj instanceof ExecutorService) {
            GeoUtil$$ExternalSyntheticApiModelOutline0.m((ExecutorService) obj);
            return;
        }
        if (obj instanceof TypedArray) {
            ((TypedArray) obj).recycle();
            return;
        }
        if (obj instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) obj).release();
            return;
        }
        if (obj instanceof MediaDrm) {
            ((MediaDrm) obj).release();
            return;
        }
        if (obj instanceof DrmManagerClient) {
            ((DrmManagerClient) obj).release();
        } else if (obj instanceof ContentProviderClient) {
            ((ContentProviderClient) obj).release();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
        }
    }

    public static /* synthetic */ void m$1(AutoCloseable autoCloseable) {
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (autoCloseable instanceof ExecutorService) {
            GeoUtil$$ExternalSyntheticApiModelOutline0.m((ExecutorService) autoCloseable);
            return;
        }
        if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
            return;
        }
        if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof MediaDrm) {
            ((MediaDrm) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof DrmManagerClient) {
            ((DrmManagerClient) autoCloseable).release();
        } else if (autoCloseable instanceof ContentProviderClient) {
            ((ContentProviderClient) autoCloseable).release();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0105 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00fa -> B:12:0x00fd). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object upsertAll$suspendImpl(org.wikipedia.categories.db.CategoryDao_Impl r20, java.util.List r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.size.ViewSizeResolver$CC.upsertAll$suspendImpl(org.wikipedia.categories.db.CategoryDao_Impl, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static int m(Attributes attributes, int i) {
        return SVGParser.SVGAttr.fromString(attributes.getLocalName(i)).ordinal();
    }

    public static TypedValue m(Context context) {
        context.getClass();
        return new TypedValue();
    }

    public static LayoutWeightElement m(GapComposer gapComposer, Modifier modifier, ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1, float f, boolean z) {
        Updater.m327setimpl(gapComposer, modifier, composeUiNode$Companion$SetModifier$1);
        return new LayoutWeightElement(f, z);
    }

    public static TypeAdapter m(Gson gson, Class cls) {
        gson.getClass();
        return gson.getAdapter(new TypeToken(cls));
    }

    public static String m() {
        return Jsoup.getInstance().getLanguageState().getAppLanguageCode();
    }

    public static String m(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String m(String str, TableInfo tableInfo, String str2, TableInfo tableInfo2) {
        return str + tableInfo + str2 + tableInfo2;
    }

    public static String m(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String m(ReflectionFactory reflectionFactory, Class cls, StringBuilder sb) {
        sb.append(reflectionFactory.getOrCreateKotlinClass(cls));
        return sb.toString();
    }

    public static String m(Object[] objArr, int i, Resources resources, int i2) {
        String string = resources.getString(i2, Arrays.copyOf(objArr, i));
        string.getClass();
        return string;
    }

    public static LinkedHashSet m(LinkedHashMap linkedHashMap, String str, TableInfo.Column column) {
        linkedHashMap.put(str, column);
        return new LinkedHashSet();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static List m785m() {
        return Jsoup.getInstance().getLanguageState().getAppLanguageCodes();
    }

    public static Pair m(int i, BoxChildSelector boxChildSelector) {
        return new Pair(boxChildSelector, new LayoutInfo(i));
    }

    public static Pair m(int i, ContainerSelector containerSelector) {
        return new Pair(containerSelector, new ContainerInfo(i));
    }

    public static Pair m(int i, RowColumnChildSelector rowColumnChildSelector) {
        return new Pair(rowColumnChildSelector, new LayoutInfo(i));
    }

    /* renamed from: m, reason: collision with other method in class */
    public static StateFlowImpl m786m() {
        return StateFlowKt.MutableStateFlow(new Resource());
    }

    public static void m(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
    }

    public static /* synthetic */ void m(AutoCloseable autoCloseable) {
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (autoCloseable instanceof ExecutorService) {
            GeoUtil$$ExternalSyntheticApiModelOutline0.m((ExecutorService) autoCloseable);
            return;
        }
        if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
            return;
        }
        if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof MediaDrm) {
            ((MediaDrm) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof DrmManagerClient) {
            ((DrmManagerClient) autoCloseable).release();
        } else if (autoCloseable instanceof ContentProviderClient) {
            ((ContentProviderClient) autoCloseable).release();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
        }
    }

    public static int m(ResourceColorProvider resourceColorProvider, int i, int i2) {
        return (resourceColorProvider.resId + i) * i2;
    }

    public static void m(EditAttemptStepEvent.Companion companion, PageTitle pageTitle, String str, String str2, PageTitle pageTitle2) {
        companion.getClass();
        pageTitle.getClass();
        EditAttemptStepEvent.Companion.submitEditAttemptEvent(str, str2, pageTitle2);
    }

    public static boolean m(WikipediaApp wikipediaApp, int i, String str, boolean z) {
        return wikipediaApp.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(wikipediaApp), i).getBoolean(str, z);
    }
}
