package coil3;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.PowerManager;
import android.text.Layout;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.ComponentActivity$$ExternalSyntheticLambda5;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.appcompat.widget.PopupMenu$2;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedString$special$$inlined$sortedBy$1;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.ParagraphIntrinsicInfo;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;
import androidx.preference.PreferenceManager;
import androidx.transition.Transition;
import androidx.viewbinding.ViewBinding;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerKt;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre24;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28;
import coil3.ComponentRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.decode.Decoder;
import coil3.fetch.Fetcher;
import coil3.map.FileMapper;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonStringWriter;
import io.noties.markwon.BlockHandlerDef;
import io.noties.markwon.core.MarkwonTheme;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.time.InstantFormatException;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerializersModuleCollector;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.FlowControlListener$None;
import okhttp3.internal.http2.Http2Connection;
import okio.Path;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.koin.core.Koin;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;
import org.schabi.newpipe.App;
import org.schabi.newpipe.R;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.settings.tabs.TabsJsonHelper;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComponentRegistry {
    public final SynchronizedLazyImpl decoderFactories$delegate;
    public final SynchronizedLazyImpl fetcherFactories$delegate;
    public final List interceptors;
    public final List keyers;
    public List lazyDecoderFactories;
    public List lazyFetcherFactories;
    public final List mappers;

    public ComponentRegistry(List list, List list2, List list3, List list4, List list5) {
        this.interceptors = list;
        this.mappers = list2;
        this.keyers = list3;
        this.lazyFetcherFactories = list4;
        this.lazyDecoderFactories = list5;
        final int i = 0;
        this.fetcherFactories$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: coil3.ComponentRegistry$$ExternalSyntheticLambda0
            public final /* synthetic */ ComponentRegistry f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                EmptyList emptyList = EmptyList.INSTANCE;
                int i3 = 0;
                ComponentRegistry componentRegistry = this.f$0;
                switch (i2) {
                    case 0:
                        List list6 = componentRegistry.lazyFetcherFactories;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            CollectionsKt__MutableCollectionsKt.addAll((List) ((Function0) list6.get(i3)).invoke(), arrayList);
                            i3++;
                        }
                        componentRegistry.lazyFetcherFactories = emptyList;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.lazyDecoderFactories;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            CollectionsKt__MutableCollectionsKt.addAll((List) ((Function0) list7.get(i3)).invoke(), arrayList2);
                            i3++;
                        }
                        componentRegistry.lazyDecoderFactories = emptyList;
                        return arrayList2;
                }
            }
        });
        final int i2 = 1;
        this.decoderFactories$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: coil3.ComponentRegistry$$ExternalSyntheticLambda0
            public final /* synthetic */ ComponentRegistry f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                EmptyList emptyList = EmptyList.INSTANCE;
                int i3 = 0;
                ComponentRegistry componentRegistry = this.f$0;
                switch (i22) {
                    case 0:
                        List list6 = componentRegistry.lazyFetcherFactories;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            CollectionsKt__MutableCollectionsKt.addAll((List) ((Function0) list6.get(i3)).invoke(), arrayList);
                            i3++;
                        }
                        componentRegistry.lazyFetcherFactories = emptyList;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.lazyDecoderFactories;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            CollectionsKt__MutableCollectionsKt.addAll((List) ((Function0) list7.get(i3)).invoke(), arrayList2);
                            i3++;
                        }
                        componentRegistry.lazyDecoderFactories = emptyList;
                        return arrayList2;
                }
            }
        });
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Builder implements ParagraphIntrinsics, SerializersModuleCollector, ViewBinding {
        public final /* synthetic */ int $r8$classId;
        public final Object interceptors;
        public Object keyers;
        public Object lazyDecoderFactories;
        public Object lazyFetcherFactories;
        public Object mappers;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v19, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r5v10, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r5v11 */
        /* JADX WARN: Type inference failed for: r5v20 */
        /* JADX WARN: Type inference failed for: r5v8, types: [java.util.ArrayList] */
        public Builder(AnnotatedString annotatedString, TextStyle textStyle, List list, Density density, FontFamily$Resolver fontFamily$Resolver) {
            int i;
            List list2;
            ArrayList arrayList;
            EmptyList arrayList2;
            int i2;
            int i3;
            List list3;
            AnnotatedString annotatedString2 = annotatedString;
            this.$r8$classId = 3;
            this.mappers = annotatedString2;
            this.keyers = list;
            final int i4 = 0;
            Function0 function0 = new Function0(this) { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$$ExternalSyntheticLambda0
                public final /* synthetic */ ComponentRegistry.Builder f$0;

                {
                    this.f$0 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v11 */
                /* JADX WARN: Type inference failed for: r0v12 */
                /* JADX WARN: Type inference failed for: r0v15 */
                /* JADX WARN: Type inference failed for: r0v18 */
                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v3 */
                /* JADX WARN: Type inference failed for: r0v5 */
                /* JADX WARN: Type inference failed for: r0v6 */
                /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v9 */
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i5 = i4;
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                    int i6 = 1;
                    ComponentRegistry.Builder builder = this.f$0;
                    switch (i5) {
                        case 0:
                            ArrayList arrayList3 = (ArrayList) builder.interceptors;
                            if (!arrayList3.isEmpty()) {
                                ?? r0 = arrayList3.get(0);
                                float minIntrinsicWidth = ((ParagraphIntrinsicInfo) r0).intrinsics.getMinIntrinsicWidth();
                                int size = arrayList3.size() - 1;
                                boolean z = r0;
                                if (1 <= size) {
                                    while (true) {
                                        Object obj = arrayList3.get(i6);
                                        float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj).intrinsics.getMinIntrinsicWidth();
                                        r0 = z;
                                        if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                            r0 = obj;
                                            minIntrinsicWidth = minIntrinsicWidth2;
                                        }
                                        if (i6 != size) {
                                            i6++;
                                            z = r0;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r0;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo2 != null ? paragraphIntrinsicInfo2.intrinsics.getMinIntrinsicWidth() : 0.0f);
                        default:
                            ArrayList arrayList4 = (ArrayList) builder.interceptors;
                            if (!arrayList4.isEmpty()) {
                                ?? r02 = arrayList4.get(0);
                                float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) r02).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                int size2 = arrayList4.size() - 1;
                                boolean z2 = r02;
                                if (1 <= size2) {
                                    while (true) {
                                        Object obj2 = arrayList4.get(i6);
                                        float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj2).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                        r02 = z2;
                                        if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                            r02 = obj2;
                                            maxIntrinsicWidth = maxIntrinsicWidth2;
                                        }
                                        if (i6 != size2) {
                                            i6++;
                                            z2 = r02;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r02;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo3 != null ? paragraphIntrinsicInfo3.intrinsics.layoutIntrinsics.getMaxIntrinsicWidth() : 0.0f);
                    }
                }
            };
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
            this.lazyFetcherFactories = ResultKt.lazy(lazyThreadSafetyMode, function0);
            final int i5 = 1;
            this.lazyDecoderFactories = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$$ExternalSyntheticLambda0
                public final /* synthetic */ ComponentRegistry.Builder f$0;

                {
                    this.f$0 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v11 */
                /* JADX WARN: Type inference failed for: r0v12 */
                /* JADX WARN: Type inference failed for: r0v15 */
                /* JADX WARN: Type inference failed for: r0v18 */
                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v3 */
                /* JADX WARN: Type inference failed for: r0v5 */
                /* JADX WARN: Type inference failed for: r0v6 */
                /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v9 */
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i52 = i5;
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                    int i6 = 1;
                    ComponentRegistry.Builder builder = this.f$0;
                    switch (i52) {
                        case 0:
                            ArrayList arrayList3 = (ArrayList) builder.interceptors;
                            if (!arrayList3.isEmpty()) {
                                ?? r0 = arrayList3.get(0);
                                float minIntrinsicWidth = ((ParagraphIntrinsicInfo) r0).intrinsics.getMinIntrinsicWidth();
                                int size = arrayList3.size() - 1;
                                boolean z = r0;
                                if (1 <= size) {
                                    while (true) {
                                        Object obj = arrayList3.get(i6);
                                        float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj).intrinsics.getMinIntrinsicWidth();
                                        r0 = z;
                                        if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                            r0 = obj;
                                            minIntrinsicWidth = minIntrinsicWidth2;
                                        }
                                        if (i6 != size) {
                                            i6++;
                                            z = r0;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r0;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo2 != null ? paragraphIntrinsicInfo2.intrinsics.getMinIntrinsicWidth() : 0.0f);
                        default:
                            ArrayList arrayList4 = (ArrayList) builder.interceptors;
                            if (!arrayList4.isEmpty()) {
                                ?? r02 = arrayList4.get(0);
                                float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) r02).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                int size2 = arrayList4.size() - 1;
                                boolean z2 = r02;
                                if (1 <= size2) {
                                    while (true) {
                                        Object obj2 = arrayList4.get(i6);
                                        float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj2).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                        r02 = z2;
                                        if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                            r02 = obj2;
                                            maxIntrinsicWidth = maxIntrinsicWidth2;
                                        }
                                        if (i6 != size2) {
                                            i6++;
                                            z2 = r02;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r02;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo3 != null ? paragraphIntrinsicInfo3.intrinsics.layoutIntrinsics.getMaxIntrinsicWidth() : 0.0f);
                    }
                }
            });
            ParagraphStyle paragraphStyle = textStyle.paragraphStyle;
            int i6 = AnnotatedStringKt.$r8$clinit;
            ArrayList arrayList3 = annotatedString2.paragraphStylesOrNull;
            String str = annotatedString2.text;
            EmptyList emptyList = EmptyList.INSTANCE;
            List sortedWith = arrayList3 != null ? CollectionsKt.sortedWith(arrayList3, new AnnotatedString$special$$inlined$sortedBy$1(1)) : emptyList;
            ArrayList arrayList4 = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            int size = sortedWith.size();
            int i7 = 0;
            int i8 = 0;
            while (i7 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) sortedWith.get(i7);
                ParagraphStyle merge = paragraphStyle.merge((ParagraphStyle) range.item);
                int i9 = range.start;
                int i10 = range.end;
                if (i9 > i10) {
                    InlineClassHelperKt.throwIllegalArgumentException("Reversed range is not supported");
                }
                while (i8 < i9 && !arrayDeque.isEmpty()) {
                    AnnotatedString.Range range2 = (AnnotatedString.Range) arrayDeque.last();
                    List list4 = sortedWith;
                    int i11 = range2.end;
                    EmptyList emptyList2 = emptyList;
                    Object obj = range2.item;
                    if (i9 < i11) {
                        arrayList4.add(new AnnotatedString.Range(obj, i8, i9));
                        i8 = i9;
                        sortedWith = list4;
                        emptyList = emptyList2;
                    } else {
                        int i12 = size;
                        arrayList4.add(new AnnotatedString.Range(obj, i8, i11));
                        i8 = range2.end;
                        while (!arrayDeque.isEmpty() && i8 == ((AnnotatedString.Range) arrayDeque.last()).end) {
                            arrayDeque.removeLast();
                        }
                        sortedWith = list4;
                        emptyList = emptyList2;
                        size = i12;
                    }
                }
                List list5 = sortedWith;
                EmptyList emptyList3 = emptyList;
                int i13 = size;
                if (i8 < i9) {
                    arrayList4.add(new AnnotatedString.Range(paragraphStyle, i8, i9));
                    i8 = i9;
                }
                AnnotatedString.Range range3 = (AnnotatedString.Range) arrayDeque.lastOrNull();
                if (range3 != null) {
                    int i14 = range3.end;
                    Object obj2 = range3.item;
                    int i15 = range3.start;
                    if (i15 == i9 && i14 == i10) {
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(((ParagraphStyle) obj2).merge(merge), i9, i10));
                    } else if (i15 == i14) {
                        arrayList4.add(new AnnotatedString.Range(obj2, i15, i14));
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(merge, i9, i10));
                    } else {
                        if (i14 < i10) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                            throw null;
                        }
                        arrayDeque.addLast(new AnnotatedString.Range(((ParagraphStyle) obj2).merge(merge), i9, i10));
                    }
                } else {
                    arrayDeque.addLast(new AnnotatedString.Range(merge, i9, i10));
                }
                i7++;
                sortedWith = list5;
                emptyList = emptyList3;
                size = i13;
            }
            EmptyList emptyList4 = emptyList;
            while (i8 <= str.length() && !arrayDeque.isEmpty()) {
                AnnotatedString.Range range4 = (AnnotatedString.Range) arrayDeque.last();
                Object obj3 = range4.item;
                int i16 = range4.end;
                arrayList4.add(new AnnotatedString.Range(obj3, i8, i16));
                while (!arrayDeque.isEmpty() && i16 == ((AnnotatedString.Range) arrayDeque.last()).end) {
                    arrayDeque.removeLast();
                }
                i8 = i16;
            }
            if (i8 < str.length()) {
                arrayList4.add(new AnnotatedString.Range(paragraphStyle, i8, str.length()));
            }
            if (arrayList4.isEmpty()) {
                i = 0;
                arrayList4.add(new AnnotatedString.Range(paragraphStyle, 0, 0));
            } else {
                i = 0;
            }
            ArrayList arrayList5 = new ArrayList(arrayList4.size());
            int size2 = arrayList4.size();
            int i17 = i;
            while (i17 < size2) {
                AnnotatedString.Range range5 = (AnnotatedString.Range) arrayList4.get(i17);
                int i18 = range5.start;
                int i19 = range5.end;
                String substring = i18 != i19 ? str.substring(i18, i19) : "";
                if (i18 == i19 || (list2 = annotatedString2.annotations) == null) {
                    arrayList2 = 0;
                    arrayList = arrayList4;
                } else if (i18 != 0 || i19 < str.length()) {
                    arrayList = arrayList4;
                    arrayList2 = new ArrayList(list2.size());
                    int size3 = list2.size();
                    int i20 = 0;
                    while (i20 < size3) {
                        int i21 = size3;
                        AnnotatedString.Range range6 = (AnnotatedString.Range) list2.get(i20);
                        int i22 = i20;
                        Object obj4 = range6.item;
                        int i23 = range6.start;
                        String str2 = str;
                        if (!(((AnnotatedString.Annotation) obj4) instanceof ParagraphStyle)) {
                            int i24 = range6.end;
                            if (AnnotatedStringKt.intersect(i18, i19, i23, i24)) {
                                i2 = size2;
                                i3 = i17;
                                arrayList2.add(new AnnotatedString.Range(RangesKt.coerceIn(i23, i18, i19) - i18, range6.tag, (AnnotatedString.Annotation) range6.item, RangesKt.coerceIn(i24, i18, i19) - i18));
                                i20 = i22 + 1;
                                size3 = i21;
                                str = str2;
                                size2 = i2;
                                i17 = i3;
                            }
                        }
                        i2 = size2;
                        i3 = i17;
                        i20 = i22 + 1;
                        size3 = i21;
                        str = str2;
                        size2 = i2;
                        i17 = i3;
                    }
                } else {
                    arrayList2 = new ArrayList(list2.size());
                    int size4 = list2.size();
                    arrayList = arrayList4;
                    int i25 = 0;
                    while (i25 < size4) {
                        int i26 = size4;
                        Object obj5 = list2.get(i25);
                        int i27 = i25;
                        if (!(((AnnotatedString.Annotation) ((AnnotatedString.Range) obj5).item) instanceof ParagraphStyle)) {
                            arrayList2.add(obj5);
                        }
                        i25 = i27 + 1;
                        size4 = i26;
                    }
                }
                String str3 = str;
                int i28 = size2;
                int i29 = i17;
                AnnotatedString annotatedString3 = new AnnotatedString(substring, arrayList2 == 0 ? emptyList4 : arrayList2);
                ParagraphStyle paragraphStyle2 = (ParagraphStyle) range5.item;
                TextStyle textStyle2 = new TextStyle(textStyle.spanStyle, paragraphStyle.merge(paragraphStyle2.textDirection == 0 ? new ParagraphStyle(paragraphStyle2.textAlign, paragraphStyle.textDirection, paragraphStyle2.lineHeight, paragraphStyle2.textIndent, paragraphStyle2.platformStyle, paragraphStyle2.lineHeightStyle, paragraphStyle2.lineBreak, paragraphStyle2.hyphens, paragraphStyle2.textMotion) : paragraphStyle2));
                ?? r1 = annotatedString3.annotations;
                EmptyList emptyList5 = r1 == 0 ? emptyList4 : r1;
                List list6 = (List) this.keyers;
                ArrayList arrayList6 = new ArrayList(list6.size());
                int size5 = list6.size();
                int i30 = 0;
                while (i30 < size5) {
                    AnnotatedString.Range range7 = (AnnotatedString.Range) list6.get(i30);
                    int i31 = range7.start;
                    int i32 = range7.end;
                    if (AnnotatedStringKt.intersect(i18, i19, i31, i32)) {
                        if (i18 > i31 || i32 > i19) {
                            InlineClassHelperKt.throwIllegalArgumentException("placeholder can not overlap with paragraph.");
                        }
                        list3 = list6;
                        arrayList6.add(new AnnotatedString.Range(range7.item, i31 - i18, i32 - i18));
                    } else {
                        list3 = list6;
                    }
                    i30++;
                    list6 = list3;
                }
                arrayList5.add(new ParagraphIntrinsicInfo(new AndroidParagraphIntrinsics(substring, textStyle2, emptyList5, arrayList6, fontFamily$Resolver, density), i18, i19));
                i17 = i29 + 1;
                annotatedString2 = annotatedString;
                arrayList4 = arrayList;
                str = str3;
                size2 = i28;
            }
            this.interceptors = arrayList5;
        }

        public static void registerSerializer$default(Builder builder, ClassReference classReference, ContextualProvider contextualProvider) {
            HashMap hashMap = (HashMap) builder.interceptors;
            classReference.getClass();
            ContextualProvider contextualProvider2 = (ContextualProvider) hashMap.get(classReference);
            if (contextualProvider2 == null || contextualProvider2.equals(contextualProvider)) {
                hashMap.put(classReference, contextualProvider);
                OperationKt.getJavaClass(classReference).isInterface();
            } else {
                throw new InstantFormatException("Contextual serializer or serializer provider for " + classReference + " already registered in this module");
            }
        }

        public void add(Fetcher.Factory factory, ClassReference classReference) {
            ((ArrayList) this.lazyFetcherFactories).add(new ComponentRegistry$Builder$$ExternalSyntheticLambda0(factory, classReference, 0));
        }

        public CancellationHandle addAwaiter(AwaiterQueue$Awaiter awaiterQueue$Awaiter, Function0 function0) {
            int i;
            int i2;
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            ref$IntRef.element = -1;
            synchronized (this.interceptors) {
                Throwable th = (Throwable) this.mappers;
                if (th != null) {
                    awaiterQueue$Awaiter.resumeWithException(th);
                    return NeverEqualPolicy.Empty;
                }
                AtomicInt atomicInt = (AtomicInt) this.keyers;
                do {
                    i = atomicInt.get();
                    i2 = i + 1;
                } while (!atomicInt.compareAndSet(i, i2));
                boolean z = true;
                if ((134217727 & i2) != 1) {
                    z = false;
                }
                ref$IntRef.element = (i2 >>> 27) & 15;
                ((MutableObjectList) this.lazyFetcherFactories).add(awaiterQueue$Awaiter);
                if (z && function0 != null) {
                    try {
                        function0.invoke();
                    } catch (Throwable th2) {
                        fail(th2);
                    }
                }
                return new CardView.AnonymousClass1(new ConnectPlan$$ExternalSyntheticLambda0(6, awaiterQueue$Awaiter, this, ref$IntRef));
            }
        }

        public Builder build() {
            return new Builder((HashMap) this.interceptors, (HashMap) this.mappers, (HashMap) this.keyers, (HashMap) this.lazyFetcherFactories, (HashMap) this.lazyDecoderFactories);
        }

        @Override // kotlinx.serialization.modules.SerializersModuleCollector
        public void contextual(ClassReference classReference, Function1 function1) {
            classReference.getClass();
            registerSerializer$default(this, classReference, new ContextualProvider.WithTypeArguments(function1));
        }

        public void dumpTo(SerializersModuleCollector serializersModuleCollector) {
            for (Map.Entry entry : ((Map) this.interceptors).entrySet()) {
                ClassReference classReference = (ClassReference) entry.getKey();
                ContextualProvider contextualProvider = (ContextualProvider) entry.getValue();
                if (contextualProvider instanceof ContextualProvider.Argless) {
                    classReference.getClass();
                    serializersModuleCollector.contextual(classReference, ((ContextualProvider.Argless) contextualProvider).serializer);
                } else {
                    if (!(contextualProvider instanceof ContextualProvider.WithTypeArguments)) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    serializersModuleCollector.contextual(classReference, ((ContextualProvider.WithTypeArguments) contextualProvider).provider);
                }
            }
            for (Map.Entry entry2 : ((Map) this.mappers).entrySet()) {
                ClassReference classReference2 = (ClassReference) entry2.getKey();
                for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                    ClassReference classReference3 = (ClassReference) entry3.getKey();
                    KSerializer kSerializer = (KSerializer) entry3.getValue();
                    classReference2.getClass();
                    classReference3.getClass();
                    kSerializer.getClass();
                    serializersModuleCollector.polymorphic(classReference2, classReference3, kSerializer);
                }
            }
            for (Map.Entry entry4 : ((Map) this.keyers).entrySet()) {
                ClassReference classReference4 = (ClassReference) entry4.getKey();
                Function1 function1 = (Function1) entry4.getValue();
                classReference4.getClass();
                function1.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
                serializersModuleCollector.polymorphicDefaultSerializer(classReference4, function1);
            }
            for (Map.Entry entry5 : ((Map) this.lazyDecoderFactories).entrySet()) {
                ClassReference classReference5 = (ClassReference) entry5.getKey();
                Function1 function12 = (Function1) entry5.getValue();
                classReference5.getClass();
                function12.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function12);
                serializersModuleCollector.polymorphicDefaultDeserializer(classReference5, function12);
            }
        }

        public void fail(Throwable th) {
            int i;
            synchronized (this.interceptors) {
                try {
                    if (((Throwable) this.mappers) != null) {
                        return;
                    }
                    this.mappers = th;
                    MutableObjectList mutableObjectList = (MutableObjectList) this.lazyFetcherFactories;
                    Object[] objArr = mutableObjectList.content;
                    int i2 = mutableObjectList._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        ((AwaiterQueue$Awaiter) objArr[i3]).resumeWithException(th);
                    }
                    ((MutableObjectList) this.lazyFetcherFactories).clear();
                    AtomicInt atomicInt = (AtomicInt) this.keyers;
                    do {
                        i = atomicInt.get();
                    } while (!atomicInt.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void flushAndDispatchAwaiters(Function1 function1) {
            int i;
            synchronized (this.interceptors) {
                try {
                    MutableObjectList mutableObjectList = (MutableObjectList) this.lazyFetcherFactories;
                    this.lazyFetcherFactories = (MutableObjectList) this.lazyDecoderFactories;
                    this.lazyDecoderFactories = mutableObjectList;
                    AtomicInt atomicInt = (AtomicInt) this.keyers;
                    do {
                        i = atomicInt.get();
                    } while (!atomicInt.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                    int i2 = mutableObjectList._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        function1.invoke(mutableObjectList.get(i3));
                    }
                    mutableObjectList.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public float getDownstreamHorizontal(int i, boolean z) {
            Layout layout = (Layout) this.keyers;
            int lineEnd = layout.getLineEnd(layout.getLineForOffset(i));
            if (i > lineEnd) {
                i = lineEnd;
            }
            return z ? layout.getPrimaryHorizontal(i) : layout.getSecondaryHorizontal(i);
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public boolean getHasStaleResolvedFonts() {
            ArrayList arrayList = (ArrayList) this.interceptors;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((ParagraphIntrinsicInfo) arrayList.get(i)).intrinsics.getHasStaleResolvedFonts()) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:157:0x0157  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public float getHorizontalPosition(int r29, boolean r30, boolean r31) {
            /*
                Method dump skipped, instructions count: 653
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: coil3.ComponentRegistry.Builder.getHorizontalPosition(int, boolean, boolean):float");
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public float getMaxIntrinsicWidth() {
            return ((Number) ((Lazy) this.lazyDecoderFactories).getValue()).floatValue();
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public float getMinIntrinsicWidth() {
            return ((Number) ((Lazy) this.lazyFetcherFactories).getValue()).floatValue();
        }

        @Override // androidx.viewbinding.ViewBinding
        public View getRoot() {
            switch (this.$r8$classId) {
            }
            return (RelativeLayout) this.interceptors;
        }

        public List getTabs() {
            try {
                return TabsJsonHelper.getTabsFromJson(((SharedPreferences) this.interceptors).getString((String) this.mappers, null));
            } catch (TabsJsonHelper.InvalidJsonException unused) {
                Toast.makeText((Context) this.keyers, R.string.saved_tabs_invalid_json, 0).show();
                return TabsJsonHelper.FALLBACK_INITIAL_TABS_LIST;
            }
        }

        public int lineEndToVisibleEnd(int i, int i2) {
            while (i > i2) {
                char charAt = ((Layout) this.keyers).getText().charAt(i - 1);
                if (charAt != ' ' && charAt != '\n' && charAt != 5760 && ((Intrinsics.compare((int) charAt, 8192) < 0 || Intrinsics.compare((int) charAt, 8202) > 0 || charAt == 8199) && charAt != 8287 && charAt != 12288)) {
                    return i;
                }
                i--;
            }
            return i;
        }

        public void onCreate() {
            MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23 mediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23 = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23(this, (MediaBrowserServiceCompat) this.lazyDecoderFactories);
            this.mappers = mediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;
            mediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23.onCreate();
        }

        @Override // kotlinx.serialization.modules.SerializersModuleCollector
        public void polymorphic(ClassReference classReference, ClassReference classReference2, KSerializer kSerializer) {
            Object obj;
            ClassReference classReference3;
            String serialName = kSerializer.getDescriptor().getSerialName();
            HashMap hashMap = (HashMap) this.mappers;
            Object obj2 = hashMap.get(classReference);
            if (obj2 == null) {
                obj2 = new HashMap();
                hashMap.put(classReference, obj2);
            }
            Map map = (Map) obj2;
            HashMap hashMap2 = (HashMap) this.lazyFetcherFactories;
            Object obj3 = hashMap2.get(classReference);
            if (obj3 == null) {
                obj3 = new HashMap();
                hashMap2.put(classReference, obj3);
            }
            Map map2 = (Map) obj3;
            KSerializer kSerializer2 = (KSerializer) map.get(classReference2);
            if (kSerializer2 != null && !kSerializer2.equals(kSerializer)) {
                throw new InstantFormatException("Serializer for " + classReference2 + " already registered in the scope of " + classReference);
            }
            KSerializer kSerializer3 = (KSerializer) map2.get(serialName);
            if (kSerializer3 == null || kSerializer3.equals(kSerializer)) {
                map.put(classReference2, kSerializer);
                map2.put(serialName, kSerializer);
                return;
            }
            Set entrySet = map.entrySet();
            entrySet.getClass();
            Iterator it = entrySet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it.next();
                    if (((Map.Entry) obj).getValue() == kSerializer3) {
                        break;
                    }
                }
            }
            Map.Entry entry = (Map.Entry) obj;
            if (entry == null || (classReference3 = (ClassReference) entry.getKey()) == null) {
                throw new IllegalStateException(("Name " + serialName + " is registered in the module but no Kotlin class is associated with it.").toString());
            }
            throw new IllegalArgumentException("Multiple polymorphic serializers in a scope of '" + classReference + "' have the same serial name '" + serialName + "': " + kSerializer + " for '" + classReference2 + "' and " + kSerializer3 + " for '" + classReference3 + '\'');
        }

        @Override // kotlinx.serialization.modules.SerializersModuleCollector
        public void polymorphicDefaultDeserializer(ClassReference classReference, Function1 function1) {
            HashMap hashMap = (HashMap) this.lazyDecoderFactories;
            Function1 function12 = (Function1) hashMap.get(classReference);
            if (function12 == null || function12.equals(function1)) {
                hashMap.put(classReference, function1);
            } else {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$1("Default deserializers provider for ", classReference, " is already registered: ", function12);
            }
        }

        @Override // kotlinx.serialization.modules.SerializersModuleCollector
        public void polymorphicDefaultSerializer(ClassReference classReference, Function1 function1) {
            HashMap hashMap = (HashMap) this.keyers;
            Function1 function12 = (Function1) hashMap.get(classReference);
            if (function12 == null || function12.equals(function1)) {
                hashMap.put(classReference, function1);
            } else {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$1("Default serializers provider for ", classReference, " is already registered: ", function12);
            }
        }

        public void saveTabs(List list) {
            List list2 = TabsJsonHelper.FALLBACK_INITIAL_TABS_LIST;
            JsonStringWriter jsonStringWriter = new JsonStringWriter();
            jsonStringWriter.object();
            jsonStringWriter.array("tabs");
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Tab tab = (Tab) it.next();
                    tab.getClass();
                    jsonStringWriter.object();
                    jsonStringWriter.value(tab.getTabId(), "tab_id");
                    tab.writeDataToJson(jsonStringWriter);
                    jsonStringWriter.end();
                }
            }
            jsonStringWriter.end();
            jsonStringWriter.end();
            ((SharedPreferences) this.interceptors).edit().putString((String) this.mappers, jsonStringWriter.done()).apply();
        }

        public void set(Object obj, String str) {
            str.getClass();
            ((LinkedHashMap) this.interceptors).put(str, obj);
            MutableStateFlow mutableStateFlow = (MutableStateFlow) ((LinkedHashMap) this.keyers).get(str);
            if (mutableStateFlow != null) {
                ((StateFlowImpl) mutableStateFlow).setValue(obj);
            }
            MutableStateFlow mutableStateFlow2 = (MutableStateFlow) ((LinkedHashMap) this.lazyFetcherFactories).get(str);
            if (mutableStateFlow2 != null) {
                ((StateFlowImpl) mutableStateFlow2).setValue(obj);
            }
        }

        @Override // kotlinx.serialization.modules.SerializersModuleCollector
        public void contextual(ClassReference classReference, KSerializer kSerializer) {
            registerSerializer$default(this, classReference, new ContextualProvider.Argless(kSerializer));
        }

        public void add(FileMapper fileMapper, ClassReference classReference) {
            ((ArrayList) this.mappers).add(new Pair(fileMapper, classReference));
        }

        public Builder(Context context, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 18:
                    this.keyers = context;
                    this.interceptors = PreferenceManager.getDefaultSharedPreferences(context);
                    this.mappers = context.getString(R.string.saved_tabs_key);
                    break;
                default:
                    context.getClass();
                    this.interceptors = context;
                    break;
            }
        }

        public Builder(DownloadManagerService downloadManagerService) {
            this.$r8$classId = 17;
            this.interceptors = "LockManager@" + hashCode();
            this.mappers = (PowerManager) downloadManagerService.getApplicationContext().getSystemService(PowerManager.class);
            this.keyers = (WifiManager) downloadManagerService.getSystemService(WifiManager.class);
        }

        public Builder(Map map) {
            this.$r8$classId = 5;
            map.getClass();
            this.interceptors = new LinkedHashMap(map);
            this.mappers = new LinkedHashMap();
            this.keyers = new LinkedHashMap();
            this.lazyFetcherFactories = new LinkedHashMap();
            this.lazyDecoderFactories = new ComponentActivity$$ExternalSyntheticLambda5(this, 2);
        }

        public Builder(Map map, Map map2, Map map3, Map map4, Map map5) {
            this.$r8$classId = 9;
            map.getClass();
            map2.getClass();
            map3.getClass();
            map4.getClass();
            map5.getClass();
            this.interceptors = map;
            this.mappers = map2;
            this.keyers = map3;
            this.lazyFetcherFactories = map4;
            this.lazyDecoderFactories = map5;
        }

        public Builder(Logger logger, Scope scope, ClassReference classReference, ParametersHolder parametersHolder) {
            this.$r8$classId = 13;
            logger.getClass();
            scope.getClass();
            classReference.getClass();
            this.interceptors = logger;
            this.mappers = scope;
            this.keyers = classReference;
            this.lazyFetcherFactories = parametersHolder;
            KClassExtKt.getFullName(classReference);
        }

        public Builder(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 10:
                    this.interceptors = new HashMap();
                    this.mappers = new HashMap();
                    this.keyers = new HashMap();
                    this.lazyFetcherFactories = new HashMap();
                    this.lazyDecoderFactories = new HashMap();
                    break;
                default:
                    this.interceptors = new Object();
                    this.keyers = new AtomicInt(0);
                    this.lazyFetcherFactories = new MutableObjectList();
                    this.lazyDecoderFactories = new MutableObjectList();
                    break;
            }
        }

        public Builder(Context context, Dispatcher dispatcher) {
            Object obj;
            this.$r8$classId = 7;
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            BatteryNotLowTracker batteryNotLowTracker = new BatteryNotLowTracker(applicationContext, dispatcher, 1);
            Context applicationContext2 = context.getApplicationContext();
            applicationContext2.getClass();
            BatteryNotLowTracker batteryNotLowTracker2 = new BatteryNotLowTracker(applicationContext2, dispatcher, 0);
            int i = Build.VERSION.SDK_INT;
            if (i < 28) {
                Context applicationContext3 = context.getApplicationContext();
                applicationContext3.getClass();
                String str = NetworkStateTrackerKt.TAG;
                if (i >= 24) {
                    obj = new NetworkStateTrackerPre28(applicationContext3, dispatcher);
                } else {
                    obj = new NetworkStateTrackerPre24(applicationContext3, dispatcher);
                }
            } else {
                obj = null;
            }
            Context applicationContext4 = context.getApplicationContext();
            applicationContext4.getClass();
            BatteryNotLowTracker batteryNotLowTracker3 = new BatteryNotLowTracker(applicationContext4, dispatcher, 2);
            this.interceptors = context;
            this.mappers = batteryNotLowTracker;
            this.keyers = batteryNotLowTracker2;
            this.lazyFetcherFactories = obj;
            this.lazyDecoderFactories = batteryNotLowTracker3;
        }

        public Builder(Layout layout) {
            this.$r8$classId = 4;
            this.keyers = layout;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            do {
                int indexOf$default = StringsKt.indexOf$default('\n', i, 4, ((Layout) this.keyers).getText());
                i = indexOf$default < 0 ? ((Layout) this.keyers).getText().length() : indexOf$default + 1;
                arrayList.add(Integer.valueOf(i));
            } while (i < ((Layout) this.keyers).getText().length());
            this.interceptors = arrayList;
            int size = arrayList.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(null);
            }
            this.mappers = arrayList2;
            this.lazyFetcherFactories = new boolean[((ArrayList) this.interceptors).size()];
            ((ArrayList) this.interceptors).size();
        }

        public Builder(App app, CoreConfiguration coreConfiguration, JsonBuilder jsonBuilder) {
            this.$r8$classId = 12;
            this.interceptors = app;
            this.mappers = coreConfiguration;
            this.keyers = jsonBuilder;
            this.lazyFetcherFactories = new ReportLocator(app, 0);
            this.lazyDecoderFactories = new Path.Companion(7);
        }

        public Builder(Koin koin) {
            this.$r8$classId = 8;
            this.interceptors = (MarkwonTheme) koin.logger;
            this.mappers = (Transition.AnonymousClass1) koin.scopeRegistry;
            this.keyers = (Transition.AnonymousClass1) koin.instanceRegistry;
            this.lazyFetcherFactories = (BlockHandlerDef) koin.propertyRegistry;
            this.lazyDecoderFactories = (ConnectionPool) koin.optionRegistry;
        }

        public /* synthetic */ Builder(RelativeLayout relativeLayout, ImageView imageView, TextView textView, ViewGroup viewGroup, View view, int i) {
            this.$r8$classId = i;
            this.interceptors = relativeLayout;
            this.mappers = imageView;
            this.keyers = textView;
            this.lazyFetcherFactories = viewGroup;
            this.lazyDecoderFactories = view;
        }

        public Builder(ContextWrapper contextWrapper, View view) {
            this.$r8$classId = 1;
            this.mappers = view;
            MenuBuilder menuBuilder = new MenuBuilder(contextWrapper);
            this.interceptors = menuBuilder;
            int i = 0;
            menuBuilder.mCallback = new PopupMenu$1(this, i);
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(contextWrapper, menuBuilder, view, false, R.attr.popupMenuStyle, 0);
            this.keyers = menuPopupHelper;
            menuPopupHelper.mDropDownGravity = 0;
            menuPopupHelper.mOnDismissListener = new PopupMenu$2(this, i);
        }

        public Builder(ComponentRegistry componentRegistry) {
            int i = 0;
            this.$r8$classId = 0;
            this.interceptors = CollectionsKt.toMutableList((Collection) componentRegistry.interceptors);
            this.mappers = CollectionsKt.toMutableList((Collection) componentRegistry.mappers);
            this.keyers = CollectionsKt.toMutableList((Collection) componentRegistry.keyers);
            List list = (List) componentRegistry.fetcherFactories$delegate.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Worker$$ExternalSyntheticLambda0((Pair) it.next(), 21));
            }
            this.lazyFetcherFactories = arrayList;
            List list2 = (List) componentRegistry.decoderFactories$delegate.getValue();
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new ComponentRegistry$Builder$$ExternalSyntheticLambda2((Decoder.Factory) it2.next(), i));
            }
            this.lazyDecoderFactories = arrayList2;
        }

        public Builder(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            this.$r8$classId = 6;
            this.lazyDecoderFactories = mediaBrowserServiceCompat;
            this.lazyFetcherFactories = mediaBrowserServiceCompat;
            this.interceptors = new ArrayList();
        }

        public Builder(TaskRunner taskRunner) {
            this.$r8$classId = 11;
            taskRunner.getClass();
            this.interceptors = taskRunner;
            this.lazyFetcherFactories = Http2Connection.Listener.REFUSE_INCOMING_STREAMS;
            this.lazyDecoderFactories = FlowControlListener$None.INSTANCE;
        }
    }
}
