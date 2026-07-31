package okhttp3;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.appcompat.widget.PopupMenu$2;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.Animation;
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
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.LayoutHelper$BidiRun;
import androidx.compose.ui.text.android.StaticLayoutFactory;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import androidx.core.app.TaskStackBuilder;
import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda5;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavDeepLinkBuilder$DeepLinkDestination;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.transition.Transition;
import coil3.ImageLoader$Builder;
import coil3.fetch.Fetcher;
import coil3.map.FileMapper;
import coil3.util.ContextsKt;
import com.google.android.flexbox.FlexContainer;
import com.google.android.flexbox.FlexItem;
import com.google.android.flexbox.FlexLine;
import com.google.android.flexbox.FlexboxHelper$Order;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.GsonBuilder;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.UIntArray;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal.EmptyTags;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.EventProcessor$sendEventsToDestination$1;
import org.wikimedia.testkitchen.config.DestinationEventService;
import org.wikimedia.testkitchen.config.SourceConfig;
import org.wikimedia.testkitchen.config.StreamConfig;
import org.wikimedia.testkitchen.config.sampling.SampleConfig;
import org.wikimedia.testkitchen.event.Event;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.util.TabUtil;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Request {
    public final RequestBody body;
    public final Headers headers;
    public CacheControl lazyCacheControl;
    public final String method;
    public final Okio__OkioKt tags;
    public final HttpUrl url;

    public Request(Builder builder) {
        HttpUrl httpUrl = (HttpUrl) builder.url;
        if (httpUrl == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("url == null");
            throw null;
        }
        this.url = httpUrl;
        this.method = (String) builder.method;
        Headers.Builder builder2 = (Headers.Builder) builder.headers;
        builder2.getClass();
        this.headers = Jsoup.commonBuild(builder2);
        this.body = (RequestBody) builder.body;
        this.tags = (Okio__OkioKt) builder.tags;
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        int i = CacheControl.$r8$clinit;
        CacheControl parse = TabUtil.parse(this.headers);
        this.lazyCacheControl = parse;
        return parse;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.url = this.url;
        builder.method = this.method;
        builder.body = this.body;
        builder.tags = this.tags;
        builder.headers = Jsoup.commonNewBuilder(this.headers);
        return builder;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        Headers headers = this.headers;
        if (headers.size() != 0) {
            sb.append(", headers=[");
            Iterator it = headers.iterator();
            int i = 0;
            while (true) {
                UIntArray.Iterator iterator = (UIntArray.Iterator) it;
                if (!iterator.hasNext()) {
                    sb.append(']');
                    break;
                }
                Object next = iterator.next();
                int i2 = i + 1;
                if (i < 0) {
                    Room.throwIndexOverflow();
                    throw null;
                }
                Pair pair = (Pair) next;
                String str = (String) pair.first;
                String str2 = (String) pair.second;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (_UtilCommonKt.isSensitiveHeader(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i = i2;
            }
        }
        EmptyTags emptyTags = EmptyTags.INSTANCE;
        Okio__OkioKt okio__OkioKt = this.tags;
        if (!Intrinsics.areEqual(okio__OkioKt, emptyTags)) {
            sb.append(", tags=");
            sb.append(okio__OkioKt);
        }
        sb.append('}');
        return sb.toString();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder implements ParagraphIntrinsics, Lazy, KotlinJvmBinaryClass$AnnotationArgumentVisitor {
        public Object body;
        public Object headers;
        public Object method;
        public Object tags;
        public Object url;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v11, types: [java.util.List] */
        public Builder(AnnotatedString annotatedString, TextStyle textStyle, List list, Density density, FontFamily.Resolver resolver) {
            int i;
            ArrayList arrayList;
            String str;
            List list2;
            AnnotatedString annotatedString2 = annotatedString;
            TextStyle textStyle2 = textStyle;
            this.url = annotatedString2;
            this.method = list;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
            final int i2 = 0;
            this.headers = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$$ExternalSyntheticLambda0
                public final /* synthetic */ Request.Builder f$0;

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
                    int i3 = i2;
                    float f = RecyclerView.DECELERATION_RATE;
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                    int i4 = 1;
                    Request.Builder builder = this.f$0;
                    switch (i3) {
                        case 0:
                            ArrayList arrayList2 = (ArrayList) builder.tags;
                            if (!arrayList2.isEmpty()) {
                                ?? r0 = arrayList2.get(0);
                                float minIntrinsicWidth = ((ParagraphIntrinsicInfo) r0).intrinsics.getMinIntrinsicWidth();
                                int size = arrayList2.size() - 1;
                                boolean z = r0;
                                if (1 <= size) {
                                    while (true) {
                                        Object obj = arrayList2.get(i4);
                                        float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj).intrinsics.getMinIntrinsicWidth();
                                        r0 = z;
                                        if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                            r0 = obj;
                                            minIntrinsicWidth = minIntrinsicWidth2;
                                        }
                                        if (i4 != size) {
                                            i4++;
                                            z = r0;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r0;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                            if (paragraphIntrinsicInfo2 != null) {
                                f = paragraphIntrinsicInfo2.intrinsics.getMinIntrinsicWidth();
                            }
                            return Float.valueOf(f);
                        default:
                            ArrayList arrayList3 = (ArrayList) builder.tags;
                            if (!arrayList3.isEmpty()) {
                                ?? r02 = arrayList3.get(0);
                                float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) r02).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                int size2 = arrayList3.size() - 1;
                                boolean z2 = r02;
                                if (1 <= size2) {
                                    while (true) {
                                        Object obj2 = arrayList3.get(i4);
                                        float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj2).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                        r02 = z2;
                                        if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                            r02 = obj2;
                                            maxIntrinsicWidth = maxIntrinsicWidth2;
                                        }
                                        if (i4 != size2) {
                                            i4++;
                                            z2 = r02;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r02;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                            if (paragraphIntrinsicInfo3 != null) {
                                f = paragraphIntrinsicInfo3.intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                            }
                            return Float.valueOf(f);
                    }
                }
            });
            final int i3 = 1;
            this.body = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$$ExternalSyntheticLambda0
                public final /* synthetic */ Request.Builder f$0;

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
                    int i32 = i3;
                    float f = RecyclerView.DECELERATION_RATE;
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                    int i4 = 1;
                    Request.Builder builder = this.f$0;
                    switch (i32) {
                        case 0:
                            ArrayList arrayList2 = (ArrayList) builder.tags;
                            if (!arrayList2.isEmpty()) {
                                ?? r0 = arrayList2.get(0);
                                float minIntrinsicWidth = ((ParagraphIntrinsicInfo) r0).intrinsics.getMinIntrinsicWidth();
                                int size = arrayList2.size() - 1;
                                boolean z = r0;
                                if (1 <= size) {
                                    while (true) {
                                        Object obj = arrayList2.get(i4);
                                        float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj).intrinsics.getMinIntrinsicWidth();
                                        r0 = z;
                                        if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                            r0 = obj;
                                            minIntrinsicWidth = minIntrinsicWidth2;
                                        }
                                        if (i4 != size) {
                                            i4++;
                                            z = r0;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r0;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                            if (paragraphIntrinsicInfo2 != null) {
                                f = paragraphIntrinsicInfo2.intrinsics.getMinIntrinsicWidth();
                            }
                            return Float.valueOf(f);
                        default:
                            ArrayList arrayList3 = (ArrayList) builder.tags;
                            if (!arrayList3.isEmpty()) {
                                ?? r02 = arrayList3.get(0);
                                float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) r02).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                int size2 = arrayList3.size() - 1;
                                boolean z2 = r02;
                                if (1 <= size2) {
                                    while (true) {
                                        Object obj2 = arrayList3.get(i4);
                                        float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj2).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                        r02 = z2;
                                        if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                            r02 = obj2;
                                            maxIntrinsicWidth = maxIntrinsicWidth2;
                                        }
                                        if (i4 != size2) {
                                            i4++;
                                            z2 = r02;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r02;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                            if (paragraphIntrinsicInfo3 != null) {
                                f = paragraphIntrinsicInfo3.intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                            }
                            return Float.valueOf(f);
                    }
                }
            });
            ParagraphStyle paragraphStyle = textStyle2.paragraphStyle;
            AnnotatedString annotatedString3 = AnnotatedStringKt.EmptyAnnotatedString;
            ArrayList arrayList2 = annotatedString2.paragraphStylesOrNull;
            String str2 = annotatedString2.text;
            EmptyList emptyList = EmptyList.INSTANCE;
            List sortedWith = arrayList2 != null ? CollectionsKt.sortedWith(arrayList2, new AnnotatedString$special$$inlined$sortedBy$1(i3)) : emptyList;
            ArrayList arrayList3 = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            int size = sortedWith.size();
            int i4 = 0;
            int i5 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) sortedWith.get(i4);
                AnnotatedString.Range copy$default = AnnotatedString.Range.copy$default(range, paragraphStyle.merge((ParagraphStyle) range.item), i2, 14);
                Object obj = copy$default.item;
                int i6 = copy$default.end;
                int i7 = copy$default.start;
                while (i5 < i7 && !arrayDeque.isEmpty()) {
                    AnnotatedString.Range range2 = (AnnotatedString.Range) arrayDeque.last();
                    List list3 = sortedWith;
                    int i8 = range2.end;
                    EmptyList emptyList2 = emptyList;
                    Object obj2 = range2.item;
                    if (i7 < i8) {
                        arrayList3.add(new AnnotatedString.Range(i5, i7, obj2));
                        i5 = i7;
                        sortedWith = list3;
                        emptyList = emptyList2;
                    } else {
                        int i9 = size;
                        arrayList3.add(new AnnotatedString.Range(i5, i8, obj2));
                        i5 = range2.end;
                        while (!arrayDeque.isEmpty() && i5 == ((AnnotatedString.Range) arrayDeque.last()).end) {
                            arrayDeque.removeLast();
                        }
                        sortedWith = list3;
                        emptyList = emptyList2;
                        size = i9;
                    }
                }
                List list4 = sortedWith;
                EmptyList emptyList3 = emptyList;
                int i10 = size;
                if (i5 < i7) {
                    arrayList3.add(new AnnotatedString.Range(i5, i7, paragraphStyle));
                    i5 = i7;
                }
                AnnotatedString.Range range3 = (AnnotatedString.Range) arrayDeque.lastOrNull();
                if (range3 != null) {
                    int i11 = range3.end;
                    Object obj3 = range3.item;
                    int i12 = range3.start;
                    if (i12 == i7 && i11 == i6) {
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(i7, i6, ((ParagraphStyle) obj3).merge((ParagraphStyle) obj)));
                    } else if (i12 == i11) {
                        arrayList3.add(new AnnotatedString.Range(i12, i11, obj3));
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(i7, i6, obj));
                    } else {
                        if (i11 < i6) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m();
                            throw null;
                        }
                        arrayDeque.addLast(new AnnotatedString.Range(i7, i6, ((ParagraphStyle) obj3).merge((ParagraphStyle) obj)));
                    }
                } else {
                    arrayDeque.addLast(new AnnotatedString.Range(i7, i6, obj));
                }
                i4++;
                sortedWith = list4;
                emptyList = emptyList3;
                size = i10;
                i2 = 0;
            }
            EmptyList emptyList4 = emptyList;
            while (i5 <= str2.length() && !arrayDeque.isEmpty()) {
                AnnotatedString.Range range4 = (AnnotatedString.Range) arrayDeque.last();
                Object obj4 = range4.item;
                int i13 = range4.end;
                arrayList3.add(new AnnotatedString.Range(i5, i13, obj4));
                while (!arrayDeque.isEmpty() && i13 == ((AnnotatedString.Range) arrayDeque.last()).end) {
                    arrayDeque.removeLast();
                }
                i5 = i13;
            }
            if (i5 < str2.length()) {
                arrayList3.add(new AnnotatedString.Range(i5, str2.length(), paragraphStyle));
            }
            if (arrayList3.isEmpty()) {
                i = 0;
                arrayList3.add(new AnnotatedString.Range(0, 0, paragraphStyle));
            } else {
                i = 0;
            }
            ArrayList arrayList4 = new ArrayList(arrayList3.size());
            int size2 = arrayList3.size();
            int i14 = i;
            while (i14 < size2) {
                AnnotatedString.Range range5 = (AnnotatedString.Range) arrayList3.get(i14);
                int i15 = range5.start;
                int i16 = range5.end;
                String substring = i15 != i16 ? str2.substring(i15, i16) : "";
                List localAnnotations = AnnotatedStringKt.getLocalAnnotations(annotatedString2, i15, i16, new SaversKt$$ExternalSyntheticLambda2(8));
                AnnotatedString annotatedString4 = new AnnotatedString(substring, localAnnotations == null ? emptyList4 : localAnnotations);
                ParagraphStyle paragraphStyle2 = (ParagraphStyle) range5.item;
                if (paragraphStyle2.textDirection == 0) {
                    arrayList = arrayList3;
                    str = str2;
                    paragraphStyle2 = new ParagraphStyle(paragraphStyle2.textAlign, paragraphStyle.textDirection, paragraphStyle2.lineHeight, paragraphStyle2.textIndent, paragraphStyle2.platformStyle, paragraphStyle2.lineHeightStyle, paragraphStyle2.lineBreak, paragraphStyle2.hyphens, paragraphStyle2.textMotion);
                } else {
                    arrayList = arrayList3;
                    str = str2;
                }
                TextStyle textStyle3 = new TextStyle(textStyle2.spanStyle, paragraphStyle.merge(paragraphStyle2));
                ?? r5 = annotatedString4.annotations;
                EmptyList emptyList5 = r5 == 0 ? emptyList4 : r5;
                List list5 = (List) this.method;
                ArrayList arrayList5 = new ArrayList(list5.size());
                int size3 = list5.size();
                int i17 = 0;
                while (i17 < size3) {
                    AnnotatedString.Range range6 = (AnnotatedString.Range) list5.get(i17);
                    int i18 = range6.start;
                    ParagraphStyle paragraphStyle3 = paragraphStyle;
                    int i19 = range6.end;
                    if (AnnotatedStringKt.intersect(i15, i16, i18, i19)) {
                        if (i15 > i18 || i19 > i16) {
                            InlineClassHelperKt.throwIllegalArgumentException("placeholder can not overlap with paragraph.");
                        }
                        list2 = list5;
                        arrayList5.add(new AnnotatedString.Range(i18 - i15, i19 - i15, range6.item));
                    } else {
                        list2 = list5;
                    }
                    i17++;
                    list5 = list2;
                    paragraphStyle = paragraphStyle3;
                }
                arrayList4.add(new ParagraphIntrinsicInfo(new AndroidParagraphIntrinsics(substring, textStyle3, emptyList5, arrayList5, resolver, density), i15, i16));
                i14++;
                annotatedString2 = annotatedString;
                textStyle2 = textStyle;
                str2 = str;
                arrayList3 = arrayList;
            }
            this.tags = arrayList4;
        }

        public static Builder bind(View view) {
            int i = R.id.forgot_password_link;
            TextView textView = (TextView) Room.findChildViewById(view, R.id.forgot_password_link);
            if (textView != null) {
                i = R.id.hCaptchaDisclaimer;
                TextView textView2 = (TextView) Room.findChildViewById(view, R.id.hCaptchaDisclaimer);
                if (textView2 != null) {
                    i = R.id.privacy_policy_link;
                    TextView textView3 = (TextView) Room.findChildViewById(view, R.id.privacy_policy_link);
                    if (textView3 != null) {
                        i = R.id.temp_account_info_container;
                        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(view, R.id.temp_account_info_container);
                        if (frameLayout != null) {
                            i = R.id.temp_account_info_text;
                            TextView textView4 = (TextView) Room.findChildViewById(view, R.id.temp_account_info_text);
                            if (textView4 != null) {
                                return new Builder(textView, textView2, textView3, frameLayout, textView4);
                            }
                        }
                    }
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
            return null;
        }

        public static ArrayList constructFlexLinesForAlignContentCenter(int i, int i2, List list) {
            int i3 = (i - i2) / 2;
            ArrayList arrayList = new ArrayList();
            FlexLine flexLine = new FlexLine();
            flexLine.mCrossSize = i3;
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 == 0) {
                    arrayList.add(flexLine);
                }
                arrayList.add((FlexLine) list.get(i4));
                if (i4 == list.size() - 1) {
                    arrayList.add(flexLine);
                }
            }
            return arrayList;
        }

        public static int[] sortOrdersIntoReorderedIndices(int i, ArrayList arrayList, SparseIntArray sparseIntArray) {
            Collections.sort(arrayList);
            sparseIntArray.clear();
            int[] iArr = new int[i];
            Iterator it = arrayList.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                FlexboxHelper$Order flexboxHelper$Order = (FlexboxHelper$Order) it.next();
                int i3 = flexboxHelper$Order.index;
                iArr[i2] = i3;
                sparseIntArray.append(i3, flexboxHelper$Order.order);
                i2++;
            }
            return iArr;
        }

        public void add(Fetcher.Factory factory, KClass kClass) {
            ((ArrayList) this.body).add(new Regex$$ExternalSyntheticLambda0(1, factory, kClass));
        }

        public CancellationHandle addAwaiter(AwaiterQueue$Awaiter awaiterQueue$Awaiter, Function0 function0) {
            int i;
            int i2;
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            ref$IntRef.element = -1;
            synchronized (this.url) {
                Throwable th = (Throwable) this.method;
                if (th != null) {
                    awaiterQueue$Awaiter.resumeWithException(th);
                    return NeverEqualPolicy.Empty;
                }
                AtomicInt atomicInt = (AtomicInt) this.headers;
                do {
                    i = atomicInt.get();
                    i2 = i + 1;
                } while (!atomicInt.compareAndSet(i, i2));
                boolean z = true;
                if ((134217727 & i2) != 1) {
                    z = false;
                }
                ref$IntRef.element = (i2 >>> 27) & 15;
                ((MutableObjectList) this.body).add(awaiterQueue$Awaiter);
                if (z) {
                    try {
                        function0.invoke();
                    } catch (Throwable th2) {
                        fail(th2);
                    }
                }
                return new CardView.AnonymousClass1(new HomeScreenKt$$ExternalSyntheticLambda29(awaiterQueue$Awaiter, this, ref$IntRef, 8));
            }
        }

        public void addFlexLine(List list, FlexLine flexLine, int i, int i2) {
            flexLine.mSumCrossSizeBefore = i2;
            ((FlexContainer) this.url).onNewFlexLineAdded(flexLine);
            flexLine.mLastIndex = i;
            list.add(flexLine);
        }

        public void addToQueue(Event event, boolean z, boolean z2) {
            int max = Math.max(((LinkedBlockingQueue) this.tags).size() / 50, 10);
            synchronized (((LinkedBlockingQueue) this.tags)) {
                while (!((LinkedBlockingQueue) this.tags).offer(event) && z) {
                    Event event2 = (Event) ((LinkedBlockingQueue) this.tags).remove();
                    if (event2 != null) {
                        ((ByteString.Companion) this.body).warn(event2.action + " was dropped so that a newer event could be added to the queue.", new Object[0]);
                    }
                    int i = max - 1;
                    if (max <= 0) {
                        break;
                    } else {
                        max = i;
                    }
                }
            }
            if (!z2 || ((LinkedBlockingQueue) this.tags).size() <= 8) {
                return;
            }
            sendEnqueuedEvents();
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
        
            if (r6.getRunCount() == 1) goto L25;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.text.Bidi analyzeBidi(int r15) {
            /*
                r14 = this;
                java.lang.Object r0 = r14.url
                android.text.Layout r0 = (android.text.Layout) r0
                java.lang.Object r1 = r14.method
                java.util.ArrayList r1 = (java.util.ArrayList) r1
                java.lang.Object r2 = r14.headers
                java.util.ArrayList r2 = (java.util.ArrayList) r2
                java.lang.Object r3 = r14.body
                boolean[] r3 = (boolean[]) r3
                boolean r4 = r3[r15]
                if (r4 == 0) goto L1b
                java.lang.Object r14 = r2.get(r15)
                java.text.Bidi r14 = (java.text.Bidi) r14
                return r14
            L1b:
                r4 = 0
                if (r15 != 0) goto L20
                r5 = r4
                goto L2c
            L20:
                int r5 = r15 + (-1)
                java.lang.Object r5 = r1.get(r5)
                java.lang.Number r5 = (java.lang.Number) r5
                int r5 = r5.intValue()
            L2c:
                java.lang.Object r1 = r1.get(r15)
                java.lang.Number r1 = (java.lang.Number) r1
                int r1 = r1.intValue()
                int r11 = r1 - r5
                java.lang.Object r6 = r14.tags
                char[] r6 = (char[]) r6
                if (r6 == 0) goto L44
                int r7 = r6.length
                if (r7 >= r11) goto L42
                goto L44
            L42:
                r7 = r6
                goto L47
            L44:
                char[] r6 = new char[r11]
                goto L42
            L47:
                java.lang.CharSequence r6 = r0.getText()
                android.text.TextUtils.getChars(r6, r5, r1, r7, r4)
                boolean r1 = java.text.Bidi.requiresBidi(r7, r4, r11)
                r5 = 0
                r13 = 1
                if (r1 == 0) goto L76
                int r1 = r14.getParagraphStart(r15)
                int r1 = r0.getLineForOffset(r1)
                int r0 = r0.getParagraphDirection(r1)
                r1 = -1
                if (r0 != r1) goto L67
                r12 = r13
                goto L68
            L67:
                r12 = r4
            L68:
                java.text.Bidi r6 = new java.text.Bidi
                r9 = 0
                r10 = 0
                r8 = 0
                r6.<init>(r7, r8, r9, r10, r11, r12)
                int r0 = r6.getRunCount()
                if (r0 != r13) goto L77
            L76:
                r6 = r5
            L77:
                r2.set(r15, r6)
                r3[r15] = r13
                if (r6 == 0) goto L87
                java.lang.Object r15 = r14.tags
                char[] r15 = (char[]) r15
                if (r7 != r15) goto L86
                r7 = r5
                goto L87
            L86:
                r7 = r15
            L87:
                r14.tags = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Request.Builder.analyzeBidi(int):java.text.Bidi");
        }

        public void cacheControl(CacheControl cacheControl) {
            cacheControl.getClass();
            String cacheControl2 = cacheControl.toString();
            if (cacheControl2.length() == 0) {
                ((Headers.Builder) this.headers).removeAll("Cache-Control");
            } else {
                header("Cache-Control", cacheControl2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:167:0x01f9, code lost:
        
            if (r8 < (r9 + r14)) goto L100;
         */
        /* JADX WARN: Removed duplicated region for block: B:100:0x0327  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x035d  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x036e  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x039a A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:126:0x039f A[ADDED_TO_REGION, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:130:0x0357  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x030f  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x0303  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x02f8  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x02d3  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x02c6  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x02bb  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x02a2  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0292  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0290  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x02a0  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x02ac  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x02b6  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x02c1  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x02f3  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x02fe  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x030a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void calculateFlexLines(com.google.android.flexbox.FlexboxHelper$FlexLinesResult r28, int r29, int r30, int r31, int r32, int r33, java.util.List r34) {
            /*
                Method dump skipped, instructions count: 942
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Request.Builder.calculateFlexLines(com.google.android.flexbox.FlexboxHelper$FlexLinesResult, int, int, int, int, int, java.util.List):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void checkSizeConstraints(android.view.View r7, int r8) {
            /*
                r6 = this;
                android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
                com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
                int r1 = r7.getMeasuredWidth()
                int r2 = r7.getMeasuredHeight()
                int r3 = r0.getMinWidth()
                r4 = 1
                if (r1 >= r3) goto L1b
                int r1 = r0.getMinWidth()
            L19:
                r3 = r4
                goto L27
            L1b:
                int r3 = r0.getMaxWidth()
                if (r1 <= r3) goto L26
                int r1 = r0.getMaxWidth()
                goto L19
            L26:
                r3 = 0
            L27:
                int r5 = r0.getMinHeight()
                if (r2 >= r5) goto L32
                int r2 = r0.getMinHeight()
                goto L3e
            L32:
                int r5 = r0.getMaxHeight()
                if (r2 <= r5) goto L3d
                int r2 = r0.getMaxHeight()
                goto L3e
            L3d:
                r4 = r3
            L3e:
                if (r4 == 0) goto L57
                r0 = 1073741824(0x40000000, float:2.0)
                int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
                r7.measure(r1, r0)
                r6.updateMeasureCache(r8, r1, r0, r7)
                java.lang.Object r6 = r6.url
                com.google.android.flexbox.FlexContainer r6 = (com.google.android.flexbox.FlexContainer) r6
                r6.updateViewCache(r7, r8)
            L57:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Request.Builder.checkSizeConstraints(android.view.View, int):void");
        }

        public void clearFlexLines(List list, int i) {
            int i2 = ((int[]) this.headers)[i];
            if (i2 == -1) {
                i2 = 0;
            }
            if (list.size() > i2) {
                list.subList(i2, list.size()).clear();
            }
            int[] iArr = (int[]) this.headers;
            int length = iArr.length - 1;
            if (i > length) {
                Arrays.fill(iArr, -1);
            } else {
                Arrays.fill(iArr, i, length, -1);
            }
            long[] jArr = (long[]) this.body;
            int length2 = jArr.length - 1;
            if (i > length2) {
                Arrays.fill(jArr, 0L);
            } else {
                Arrays.fill(jArr, i, length2, 0L);
            }
        }

        public ArrayList createOrders(int i) {
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                FlexItem flexItem = (FlexItem) ((FlexContainer) this.url).getFlexItemAt(i2).getLayoutParams();
                FlexboxHelper$Order flexboxHelper$Order = new FlexboxHelper$Order();
                flexboxHelper$Order.order = flexItem.getOrder();
                flexboxHelper$Order.index = i2;
                arrayList.add(flexboxHelper$Order);
            }
            return arrayList;
        }

        public TaskStackBuilder createTaskStackBuilder() {
            ArrayList arrayList = (ArrayList) this.tags;
            Intent intent = (Intent) this.headers;
            NavGraph navGraph = (NavGraph) this.body;
            if (arrayList.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You must call setDestination() or addDestination() before constructing the deep link");
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            Iterator it = arrayList.iterator();
            NavDestination navDestination = null;
            while (true) {
                int i = 0;
                if (!it.hasNext()) {
                    intent.putExtra("android-support-nav:controller:deepLinkIds", CollectionsKt.toIntArray(arrayList2));
                    intent.putParcelableArrayListExtra("android-support-nav:controller:deepLinkArgs", arrayList3);
                    TaskStackBuilder taskStackBuilder = new TaskStackBuilder((Context) this.url);
                    Intent intent2 = new Intent(intent);
                    ComponentName component = intent2.getComponent();
                    if (component == null) {
                        component = intent2.resolveActivity(taskStackBuilder.mSourceContext.getPackageManager());
                    }
                    if (component != null) {
                        taskStackBuilder.addParentStack(component);
                    }
                    ArrayList arrayList4 = taskStackBuilder.mIntents;
                    arrayList4.add(intent2);
                    int size = arrayList4.size();
                    while (i < size) {
                        Intent intent3 = (Intent) arrayList4.get(i);
                        if (intent3 != null) {
                            intent3.putExtra("android-support-nav:controller:deepLinkIntent", intent);
                        }
                        i++;
                    }
                    return taskStackBuilder;
                }
                NavDeepLinkBuilder$DeepLinkDestination navDeepLinkBuilder$DeepLinkDestination = (NavDeepLinkBuilder$DeepLinkDestination) it.next();
                int i2 = navDeepLinkBuilder$DeepLinkDestination.destinationId;
                Bundle bundle = navDeepLinkBuilder$DeepLinkDestination.arguments;
                NavDestination findDestination = findDestination(i2);
                if (findDestination == null) {
                    int i3 = NavDestination.$r8$clinit;
                    Utils$$ExternalSyntheticBUOutline0.m("Navigation destination ", UStringsKt.getDisplayName((NavContext) this.method, i2), " cannot be found in the navigation graph ", navGraph);
                    return null;
                }
                int[] buildDeepLinkIds = findDestination.buildDeepLinkIds(navDestination);
                int length = buildDeepLinkIds.length;
                while (i < length) {
                    arrayList2.add(Integer.valueOf(buildDeepLinkIds[i]));
                    arrayList3.add(bundle);
                    i++;
                }
                navDestination = findDestination;
            }
        }

        public void determineCrossSize(int i, int i2, int i3) {
            int i4;
            int i5;
            int round;
            FlexContainer flexContainer = (FlexContainer) this.url;
            int flexDirection = flexContainer.getFlexDirection();
            if (flexDirection == 0 || flexDirection == 1) {
                int mode = View.MeasureSpec.getMode(i2);
                int size = View.MeasureSpec.getSize(i2);
                i4 = mode;
                i5 = size;
            } else if (flexDirection != 2 && flexDirection != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(flexDirection, "Invalid flex direction: "));
                return;
            } else {
                i4 = View.MeasureSpec.getMode(i);
                i5 = View.MeasureSpec.getSize(i);
            }
            List<FlexLine> flexLinesInternal = flexContainer.getFlexLinesInternal();
            if (i4 == 1073741824) {
                int sumOfCrossSize = flexContainer.getSumOfCrossSize() + i3;
                int i6 = 0;
                if (flexLinesInternal.size() == 1) {
                    ((FlexLine) flexLinesInternal.get(0)).mCrossSize = i5 - i3;
                    return;
                }
                if (flexLinesInternal.size() >= 2) {
                    int alignContent = flexContainer.getAlignContent();
                    if (alignContent == 1) {
                        FlexLine flexLine = new FlexLine();
                        flexLine.mCrossSize = i5 - sumOfCrossSize;
                        flexLinesInternal.add(0, flexLine);
                        return;
                    }
                    if (alignContent == 2) {
                        flexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(i5, sumOfCrossSize, flexLinesInternal));
                        return;
                    }
                    if (alignContent == 3) {
                        if (sumOfCrossSize >= i5) {
                            return;
                        }
                        float size2 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size3 = flexLinesInternal.size();
                        float f = 0.0f;
                        while (i6 < size3) {
                            arrayList.add((FlexLine) flexLinesInternal.get(i6));
                            if (i6 != flexLinesInternal.size() - 1) {
                                FlexLine flexLine2 = new FlexLine();
                                if (i6 == flexLinesInternal.size() - 2) {
                                    int round2 = Math.round(f + size2);
                                    flexLine2.mCrossSize = round2;
                                    round = round2;
                                    f = 0.0f;
                                } else {
                                    round = Math.round(size2);
                                    flexLine2.mCrossSize = round;
                                }
                                float f2 = (size2 - round) + f;
                                if (f2 > 1.0f) {
                                    flexLine2.mCrossSize = round + 1;
                                    f2 -= 1.0f;
                                } else if (f2 < -1.0f) {
                                    flexLine2.mCrossSize = round - 1;
                                    f2 += 1.0f;
                                }
                                f = f2;
                                arrayList.add(flexLine2);
                            }
                            i6++;
                        }
                        flexContainer.setFlexLines(arrayList);
                        return;
                    }
                    if (alignContent == 4) {
                        if (sumOfCrossSize >= i5) {
                            flexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(i5, sumOfCrossSize, flexLinesInternal));
                            return;
                        }
                        int size4 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                        ArrayList arrayList2 = new ArrayList();
                        FlexLine flexLine3 = new FlexLine();
                        flexLine3.mCrossSize = size4;
                        for (FlexLine flexLine4 : flexLinesInternal) {
                            arrayList2.add(flexLine3);
                            arrayList2.add(flexLine4);
                            arrayList2.add(flexLine3);
                        }
                        flexContainer.setFlexLines(arrayList2);
                        return;
                    }
                    if (alignContent == 5 && sumOfCrossSize < i5) {
                        float size5 = (i5 - sumOfCrossSize) / flexLinesInternal.size();
                        int size6 = flexLinesInternal.size();
                        float f3 = 0.0f;
                        while (i6 < size6) {
                            FlexLine flexLine5 = (FlexLine) flexLinesInternal.get(i6);
                            float f4 = flexLine5.mCrossSize + size5;
                            if (i6 == flexLinesInternal.size() - 1) {
                                f4 += f3;
                                f3 = 0.0f;
                            }
                            int round3 = Math.round(f4);
                            float f5 = (f4 - round3) + f3;
                            if (f5 > 1.0f) {
                                round3++;
                                f5 -= 1.0f;
                            } else if (f5 < -1.0f) {
                                round3--;
                                f5 += 1.0f;
                            }
                            f3 = f5;
                            flexLine5.mCrossSize = round3;
                            i6++;
                        }
                    }
                }
            }
        }

        public void determineMainSize(int i, int i2, int i3) {
            int size;
            int paddingLeft;
            int paddingRight;
            Builder builder;
            int i4;
            int i5;
            FlexContainer flexContainer = (FlexContainer) this.url;
            int flexItemCount = flexContainer.getFlexItemCount();
            boolean[] zArr = (boolean[]) this.method;
            if (zArr == null) {
                this.method = new boolean[Math.max(flexItemCount, 10)];
            } else if (zArr.length < flexItemCount) {
                this.method = new boolean[Math.max(zArr.length * 2, flexItemCount)];
            } else {
                Arrays.fill(zArr, false);
            }
            if (i3 >= flexContainer.getFlexItemCount()) {
                return;
            }
            int flexDirection = flexContainer.getFlexDirection();
            int flexDirection2 = flexContainer.getFlexDirection();
            if (flexDirection2 == 0 || flexDirection2 == 1) {
                int mode = View.MeasureSpec.getMode(i);
                size = View.MeasureSpec.getSize(i);
                int largestMainSize = flexContainer.getLargestMainSize();
                if (mode != 1073741824) {
                    size = Math.min(largestMainSize, size);
                }
                paddingLeft = flexContainer.getPaddingLeft();
                paddingRight = flexContainer.getPaddingRight();
            } else {
                if (flexDirection2 != 2 && flexDirection2 != 3) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(flexDirection, "Invalid flex direction: "));
                    return;
                }
                int mode2 = View.MeasureSpec.getMode(i2);
                size = View.MeasureSpec.getSize(i2);
                if (mode2 != 1073741824) {
                    size = flexContainer.getLargestMainSize();
                }
                paddingLeft = flexContainer.getPaddingTop();
                paddingRight = flexContainer.getPaddingBottom();
            }
            int i6 = paddingRight + paddingLeft;
            int i7 = size;
            int[] iArr = (int[]) this.headers;
            int i8 = iArr != null ? iArr[i3] : 0;
            List flexLinesInternal = flexContainer.getFlexLinesInternal();
            int size2 = flexLinesInternal.size();
            while (i8 < size2) {
                FlexLine flexLine = (FlexLine) flexLinesInternal.get(i8);
                int i9 = flexLine.mMainSize;
                if (i9 >= i7 || !flexLine.mAnyItemsHaveFlexGrow) {
                    builder = this;
                    i4 = i;
                    i5 = i2;
                    if (i9 > i7 && flexLine.mAnyItemsHaveFlexShrink) {
                        builder.shrinkFlexItems(i4, i5, flexLine, i7, i6, false);
                    }
                } else {
                    builder = this;
                    i4 = i;
                    i5 = i2;
                    builder.expandFlexItems(i4, i5, flexLine, i7, i6, false);
                }
                i8++;
                this = builder;
                i = i4;
                i2 = i5;
            }
        }

        public void ensureIndexToFlexLine(int i) {
            int[] iArr = (int[]) this.headers;
            if (iArr == null) {
                this.headers = new int[Math.max(i, 10)];
            } else if (iArr.length < i) {
                this.headers = Arrays.copyOf((int[]) this.headers, Math.max(iArr.length * 2, i));
            }
        }

        public void ensureMeasureSpecCache(int i) {
            long[] jArr = (long[]) this.body;
            if (jArr == null) {
                this.body = new long[Math.max(i, 10)];
            } else if (jArr.length < i) {
                this.body = Arrays.copyOf((long[]) this.body, Math.max(jArr.length * 2, i));
            }
        }

        public void ensureMeasuredSizeCache(int i) {
            long[] jArr = (long[]) this.tags;
            if (jArr == null) {
                this.tags = new long[Math.max(i, 10)];
            } else if (jArr.length < i) {
                this.tags = Arrays.copyOf((long[]) this.tags, Math.max(jArr.length * 2, i));
            }
        }

        public void expandFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
            int i5;
            float f;
            float f2;
            int i6;
            double d;
            double d2;
            FlexContainer flexContainer = (FlexContainer) this.url;
            float f3 = flexLine.mTotalFlexGrow;
            float f4 = RecyclerView.DECELERATION_RATE;
            if (f3 <= RecyclerView.DECELERATION_RATE || i3 < (i5 = flexLine.mMainSize)) {
                return;
            }
            float f5 = (i3 - i5) / f3;
            flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
            if (!z) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            int i7 = 0;
            boolean z2 = false;
            int i8 = 0;
            float f6 = 0.0f;
            while (i7 < flexLine.mItemCount) {
                int i9 = flexLine.mFirstIndex + i7;
                View reorderedFlexItemAt = flexContainer.getReorderedFlexItemAt(i9);
                if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                    f = f4;
                    f2 = f5;
                    z2 = z2;
                } else {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int flexDirection = flexContainer.getFlexDirection();
                    f = f4;
                    if (flexDirection == 0 || flexDirection == 1) {
                        f2 = f5;
                        boolean z3 = z2;
                        int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr = (long[]) this.tags;
                        if (jArr != null) {
                            measuredWidth = (int) jArr[i9];
                        }
                        int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr2 = (long[]) this.tags;
                        if (jArr2 != null) {
                            measuredHeight = (int) (jArr2[i9] >> 32);
                        }
                        if (((boolean[]) this.method)[i9] || flexItem.getFlexGrow() <= f) {
                            z2 = z3;
                        } else {
                            float flexGrow = (flexItem.getFlexGrow() * f2) + measuredWidth;
                            if (i7 == flexLine.mItemCount - 1) {
                                flexGrow += f6;
                                f6 = f;
                            }
                            int round = Math.round(flexGrow);
                            if (round > flexItem.getMaxWidth()) {
                                round = flexItem.getMaxWidth();
                                ((boolean[]) this.method)[i9] = true;
                                flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                                z2 = true;
                            } else {
                                float f7 = (flexGrow - round) + f6;
                                double d3 = f7;
                                if (d3 > 1.0d) {
                                    round++;
                                    d = d3 - 1.0d;
                                } else {
                                    if (d3 < -1.0d) {
                                        round--;
                                        d = d3 + 1.0d;
                                    }
                                    f6 = f7;
                                    z2 = z3;
                                }
                                f7 = (float) d;
                                f6 = f7;
                                z2 = z3;
                            }
                            int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                            reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                            int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i9, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                            flexContainer.updateViewCache(reorderedFlexItemAt, i9);
                            measuredWidth = measuredWidth2;
                            measuredHeight = measuredHeight2;
                        }
                        int max = Math.max(i8, flexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight);
                        flexLine.mMainSize = flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth + flexLine.mMainSize;
                        i6 = max;
                    } else {
                        int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr3 = (long[]) this.tags;
                        if (jArr3 != null) {
                            measuredHeight3 = (int) (jArr3[i9] >> 32);
                        }
                        int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr4 = (long[]) this.tags;
                        if (jArr4 != null) {
                            measuredWidth3 = (int) jArr4[i9];
                        }
                        if (((boolean[]) this.method)[i9] || flexItem.getFlexGrow() <= f) {
                            f2 = f5;
                            z2 = z2;
                        } else {
                            float flexGrow2 = (flexItem.getFlexGrow() * f5) + measuredHeight3;
                            if (i7 == flexLine.mItemCount - 1) {
                                flexGrow2 += f6;
                                f6 = f;
                            }
                            int round2 = Math.round(flexGrow2);
                            if (round2 > flexItem.getMaxHeight()) {
                                round2 = flexItem.getMaxHeight();
                                ((boolean[]) this.method)[i9] = true;
                                flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                                z2 = true;
                                f2 = f5;
                            } else {
                                float f8 = (flexGrow2 - round2) + f6;
                                f2 = f5;
                                boolean z4 = z2;
                                double d4 = f8;
                                if (d4 > 1.0d) {
                                    round2++;
                                    d2 = d4 - 1.0d;
                                } else {
                                    if (d4 < -1.0d) {
                                        round2--;
                                        d2 = d4 + 1.0d;
                                    }
                                    f6 = f8;
                                    z2 = z4;
                                }
                                f8 = (float) d2;
                                f6 = f8;
                                z2 = z4;
                            }
                            int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                            reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                            int measuredWidth4 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i9, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                            flexContainer.updateViewCache(reorderedFlexItemAt, i9);
                            measuredWidth3 = measuredWidth4;
                            measuredHeight3 = measuredHeight4;
                        }
                        i6 = Math.max(i8, flexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth3);
                        flexLine.mMainSize = flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight3 + flexLine.mMainSize;
                    }
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i6);
                    i8 = i6;
                }
                i7++;
                f4 = f;
                f5 = f2;
            }
            if (!z2 || i5 == flexLine.mMainSize) {
                return;
            }
            expandFlexItems(i, i2, flexLine, i3, i4, true);
        }

        public void fail(Throwable th) {
            int i;
            synchronized (this.url) {
                try {
                    if (((Throwable) this.method) != null) {
                        return;
                    }
                    this.method = th;
                    MutableObjectList mutableObjectList = (MutableObjectList) this.body;
                    Object[] objArr = mutableObjectList.content;
                    int i2 = mutableObjectList._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        ((AwaiterQueue$Awaiter) objArr[i3]).resumeWithException(th);
                    }
                    ((MutableObjectList) this.body).clear();
                    AtomicInt atomicInt = (AtomicInt) this.headers;
                    do {
                        i = atomicInt.get();
                    } while (!atomicInt.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public NavDestination findDestination(int i) {
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.addLast((NavGraph) this.body);
            while (!arrayDeque.isEmpty()) {
                NavDestination navDestination = (NavDestination) arrayDeque.removeFirst();
                if (navDestination.impl.size == i) {
                    return navDestination;
                }
                if (navDestination instanceof NavGraph) {
                    Iterator it = ((NavGraph) navDestination).iterator();
                    while (true) {
                        NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
                        if (navGraphImpl$iterator$1.hasNext()) {
                            arrayDeque.addLast((NavDestination) navGraphImpl$iterator$1.next());
                        }
                    }
                }
            }
            return null;
        }

        public void flushAndDispatchAwaiters(Function1 function1) {
            int i;
            synchronized (this.url) {
                try {
                    MutableObjectList mutableObjectList = (MutableObjectList) this.body;
                    this.body = (MutableObjectList) this.tags;
                    this.tags = mutableObjectList;
                    AtomicInt atomicInt = (AtomicInt) this.headers;
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

        public int getChildHeightMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
            FlexContainer flexContainer = (FlexContainer) this.url;
            int childHeightMeasureSpec = flexContainer.getChildHeightMeasureSpec(i, flexItem.getMarginBottom() + flexItem.getMarginTop() + flexContainer.getPaddingBottom() + flexContainer.getPaddingTop() + i2, flexItem.getHeight());
            int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
            return size > flexItem.getMaxHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
        }

        public int getChildWidthMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
            FlexContainer flexContainer = (FlexContainer) this.url;
            int childWidthMeasureSpec = flexContainer.getChildWidthMeasureSpec(i, flexItem.getMarginRight() + flexItem.getMarginLeft() + flexContainer.getPaddingRight() + flexContainer.getPaddingLeft() + i2, flexItem.getWidth());
            int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
            return size > flexItem.getMaxWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
        }

        public float getDownstreamHorizontal(int i, boolean z) {
            Layout layout = (Layout) this.url;
            int lineEnd = layout.getLineEnd(layout.getLineForOffset(i));
            if (i > lineEnd) {
                i = lineEnd;
            }
            return z ? layout.getPrimaryHorizontal(i) : layout.getSecondaryHorizontal(i);
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public boolean getHasStaleResolvedFonts() {
            ArrayList arrayList = (ArrayList) this.tags;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((ParagraphIntrinsicInfo) arrayList.get(i)).intrinsics.getHasStaleResolvedFonts()) {
                    return true;
                }
            }
            return false;
        }

        public float getHorizontalPosition(int i, boolean z, boolean z2) {
            int i2;
            int i3;
            Layout layout = (Layout) this.url;
            if (!z2) {
                return getDownstreamHorizontal(i, z);
            }
            int lineForOffset = StaticLayoutFactory.getLineForOffset(layout, i, z2);
            int lineStart = layout.getLineStart(lineForOffset);
            int lineEnd = layout.getLineEnd(lineForOffset);
            if (i != lineStart && i != lineEnd) {
                return getDownstreamHorizontal(i, z);
            }
            if (i == 0 || i == layout.getText().length()) {
                return getDownstreamHorizontal(i, z);
            }
            int paragraphForOffset = getParagraphForOffset(i, z2);
            boolean z3 = layout.getParagraphDirection(layout.getLineForOffset(getParagraphStart(paragraphForOffset))) == -1;
            int lineEndToVisibleEnd = lineEndToVisibleEnd(lineEnd, lineStart);
            int paragraphStart = getParagraphStart(paragraphForOffset);
            int i4 = lineStart - paragraphStart;
            int i5 = lineEndToVisibleEnd - paragraphStart;
            Bidi analyzeBidi = analyzeBidi(paragraphForOffset);
            Bidi createLineBidi = analyzeBidi != null ? analyzeBidi.createLineBidi(i4, i5) : null;
            if (createLineBidi == null || createLineBidi.getRunCount() == 1) {
                boolean isRtlCharAt = layout.isRtlCharAt(lineStart);
                if (z || z3 == isRtlCharAt) {
                    z3 = !z3;
                }
                return i == lineStart ? z3 : !z3 ? layout.getLineLeft(lineForOffset) : layout.getLineRight(lineForOffset);
            }
            int runCount = createLineBidi.getRunCount();
            LayoutHelper$BidiRun[] layoutHelper$BidiRunArr = new LayoutHelper$BidiRun[runCount];
            for (int i6 = 0; i6 < runCount; i6++) {
                layoutHelper$BidiRunArr[i6] = new LayoutHelper$BidiRun(createLineBidi.getRunStart(i6) + lineStart, createLineBidi.getRunLimit(i6) + lineStart, createLineBidi.getRunLevel(i6) % 2 == 1);
            }
            int runCount2 = createLineBidi.getRunCount();
            byte[] bArr = new byte[runCount2];
            for (int i7 = 0; i7 < runCount2; i7++) {
                bArr[i7] = (byte) createLineBidi.getRunLevel(i7);
            }
            Bidi.reorderVisually(bArr, 0, layoutHelper$BidiRunArr, 0, runCount);
            if (i == lineStart) {
                int i8 = 0;
                while (true) {
                    if (i8 >= runCount) {
                        i3 = -1;
                        break;
                    }
                    if (layoutHelper$BidiRunArr[i8].start == i) {
                        i3 = i8;
                        break;
                    }
                    i8++;
                }
                boolean z4 = (z || z3 == layoutHelper$BidiRunArr[i3].isRtl) ? !z3 : z3;
                return (i3 == 0 && z4) ? layout.getLineLeft(lineForOffset) : (i3 != runCount - 1 || z4) ? z4 ? layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i3 - 1].start) : layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i3 + 1].start) : layout.getLineRight(lineForOffset);
            }
            int lineEndToVisibleEnd2 = i > lineEndToVisibleEnd ? lineEndToVisibleEnd(i, lineStart) : i;
            int i9 = 0;
            while (true) {
                if (i9 >= runCount) {
                    i2 = -1;
                    break;
                }
                if (layoutHelper$BidiRunArr[i9].end == lineEndToVisibleEnd2) {
                    i2 = i9;
                    break;
                }
                i9++;
            }
            boolean z5 = (z || z3 == layoutHelper$BidiRunArr[i2].isRtl) ? z3 : !z3;
            return (i2 == 0 && z5) ? layout.getLineLeft(lineForOffset) : (i2 != runCount - 1 || z5) ? z5 ? layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i2 - 1].end) : layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i2 + 1].end) : layout.getLineRight(lineForOffset);
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public float getMaxIntrinsicWidth() {
            return ((Number) ((Lazy) this.body).getValue()).floatValue();
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public float getMinIntrinsicWidth() {
            return ((Number) ((Lazy) this.headers).getValue()).floatValue();
        }

        public int getParagraphForOffset(int i, boolean z) {
            ArrayList arrayList = (ArrayList) this.method;
            int binarySearch$default = Room.binarySearch$default(arrayList, Integer.valueOf(i));
            int i2 = binarySearch$default < 0 ? -(binarySearch$default + 1) : binarySearch$default + 1;
            if (z && i2 > 0) {
                int i3 = i2 - 1;
                if (i == ((Number) arrayList.get(i3)).intValue()) {
                    return i3;
                }
            }
            return i2;
        }

        public int getParagraphStart(int i) {
            if (i == 0) {
                return 0;
            }
            return ((Number) ((ArrayList) this.method).get(i - 1)).intValue();
        }

        @Override // kotlin.Lazy
        public Object getValue() {
            ViewModel viewModel = (ViewModel) this.tags;
            if (viewModel != null) {
                return viewModel;
            }
            ViewModelStore viewModelStore = (ViewModelStore) ((Function0) this.method).invoke();
            ViewModelProvider$Factory viewModelProvider$Factory = (ViewModelProvider$Factory) ((Function0) this.headers).invoke();
            CreationExtras creationExtras = (CreationExtras) ((Function0) this.body).invoke();
            viewModelStore.getClass();
            viewModelProvider$Factory.getClass();
            creationExtras.getClass();
            ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(viewModelStore, viewModelProvider$Factory, creationExtras);
            KClass kClass = (KClass) this.url;
            kClass.getClass();
            String qualifiedName = kClass.getQualifiedName();
            if (qualifiedName == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
                return null;
            }
            ViewModel viewModel$lifecycle_viewmodel = imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), kClass);
            this.tags = viewModel$lifecycle_viewmodel;
            return viewModel$lifecycle_viewmodel;
        }

        public void header(String str, String str2) {
            str2.getClass();
            Headers.Builder builder = (Headers.Builder) this.headers;
            builder.getClass();
            Jsoup.headersCheckName(str);
            Jsoup.headersCheckValue(str2, str);
            builder.removeAll(str);
            Jsoup.commonAddLenient(builder, str, str2);
        }

        public void layoutSingleChildHorizontal(View view, FlexLine flexLine, int i, int i2, int i3, int i4) {
            FlexItem flexItem = (FlexItem) view.getLayoutParams();
            FlexContainer flexContainer = (FlexContainer) this.url;
            int alignItems = flexContainer.getAlignItems();
            if (flexItem.getAlignSelf() != -1) {
                alignItems = flexItem.getAlignSelf();
            }
            int i5 = flexLine.mCrossSize;
            if (alignItems != 0) {
                if (alignItems == 1) {
                    if (flexContainer.getFlexWrap() != 2) {
                        int i6 = i2 + i5;
                        view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i6 - flexItem.getMarginBottom());
                        return;
                    }
                    int measuredHeight = view.getMeasuredHeight();
                    int marginTop = flexItem.getMarginTop() + measuredHeight + (i2 - i5);
                    int measuredHeight2 = view.getMeasuredHeight();
                    view.layout(i, marginTop, i3, flexItem.getMarginTop() + measuredHeight2 + (i4 - i5));
                    return;
                }
                if (alignItems == 2) {
                    int marginTop2 = ((flexItem.getMarginTop() + (i5 - view.getMeasuredHeight())) - flexItem.getMarginBottom()) / 2;
                    if (flexContainer.getFlexWrap() != 2) {
                        int i7 = i2 + marginTop2;
                        view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                        return;
                    } else {
                        int i8 = i2 - marginTop2;
                        view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                        return;
                    }
                }
                if (alignItems == 3) {
                    int flexWrap = flexContainer.getFlexWrap();
                    int i9 = flexLine.mMaxBaseline;
                    if (flexWrap != 2) {
                        int max = Math.max(i9 - view.getBaseline(), flexItem.getMarginTop());
                        view.layout(i, i2 + max, i3, i4 + max);
                        return;
                    } else {
                        int max2 = Math.max(view.getBaseline() + (i9 - view.getMeasuredHeight()), flexItem.getMarginBottom());
                        view.layout(i, i2 - max2, i3, i4 - max2);
                        return;
                    }
                }
                if (alignItems != 4) {
                    return;
                }
            }
            if (flexContainer.getFlexWrap() != 2) {
                view.layout(i, flexItem.getMarginTop() + i2, i3, flexItem.getMarginTop() + i4);
            } else {
                view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
            }
        }

        public void layoutSingleChildVertical(View view, FlexLine flexLine, boolean z, int i, int i2, int i3, int i4) {
            FlexItem flexItem = (FlexItem) view.getLayoutParams();
            int alignItems = ((FlexContainer) this.url).getAlignItems();
            if (flexItem.getAlignSelf() != -1) {
                alignItems = flexItem.getAlignSelf();
            }
            int i5 = flexLine.mCrossSize;
            if (alignItems != 0) {
                if (alignItems == 1) {
                    if (!z) {
                        view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                        return;
                    }
                    int measuredWidth = view.getMeasuredWidth();
                    view.layout(flexItem.getMarginLeft() + measuredWidth + (i - i5), i2, flexItem.getMarginLeft() + view.getMeasuredWidth() + (i3 - i5), i4);
                    return;
                }
                if (alignItems == 2) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int marginStart = ((marginLayoutParams.getMarginStart() + (i5 - view.getMeasuredWidth())) - marginLayoutParams.getMarginEnd()) / 2;
                    if (z) {
                        view.layout(i - marginStart, i2, i3 - marginStart, i4);
                        return;
                    } else {
                        view.layout(i + marginStart, i2, i3 + marginStart, i4);
                        return;
                    }
                }
                if (alignItems != 3 && alignItems != 4) {
                    return;
                }
            }
            if (z) {
                view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
            } else {
                view.layout(flexItem.getMarginLeft() + i, i2, flexItem.getMarginLeft() + i3, i4);
            }
        }

        public int lineEndToVisibleEnd(int i, int i2) {
            while (i > i2) {
                char charAt = ((Layout) this.url).getText().charAt(i - 1);
                if (charAt != ' ' && charAt != '\n' && charAt != 5760 && ((Intrinsics.compare((int) charAt, 8192) < 0 || Intrinsics.compare((int) charAt, 8202) > 0 || charAt == 8199) && charAt != 8287 && charAt != 12288)) {
                    return i;
                }
                i--;
            }
            return i;
        }

        public void method(String str, RequestBody requestBody) {
            str.getClass();
            if (str.length() <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("method.isEmpty() == true");
                return;
            }
            if (requestBody == null) {
                if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("QUERY") || str.equals("REPORT")) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("method ", str, " must have a request body."));
                    return;
                }
            } else if (!TabUtil.permitsRequestBody(str)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("method ", str, " must not have a request body."));
                return;
            }
            this.method = str;
            this.body = requestBody;
        }

        public void sendEnqueuedEvents() {
            DestinationEventService destinationEventService;
            boolean isInSample;
            SourceConfig sourceConfig = (SourceConfig) ((AtomicReference) this.url).get();
            Continuation continuation = null;
            Map map = sourceConfig != null ? sourceConfig.streamConfigs : null;
            if (map == null || map.isEmpty()) {
                ((ByteString.Companion) this.body).warn("Configuration is missing, enqueued events are not sent.", new Object[0]);
                return;
            }
            ArrayList arrayList = new ArrayList();
            synchronized (((LinkedBlockingQueue) this.tags)) {
                ((LinkedBlockingQueue) this.tags).drainTo(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (map.containsKey(((Event) next).meta.stream)) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                Event event = (Event) next2;
                StreamConfig streamConfig = (StreamConfig) map.get(event.meta.stream);
                if (streamConfig == null) {
                    isInSample = false;
                } else {
                    SampleConfig sampleConfig = streamConfig.sampleConfig;
                    if (sampleConfig != null) {
                        event.sample = sampleConfig;
                    }
                    isInSample = ((ConnectionPool) this.method).isInSample(streamConfig);
                }
                if (isInSample) {
                    arrayList3.add(next2);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                Object next3 = it3.next();
                arrayList4.add(next3);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                Object next4 = it4.next();
                StreamConfig streamConfig2 = (StreamConfig) map.get(((Event) next4).meta.stream);
                if (streamConfig2 == null || (destinationEventService = streamConfig2.destinationEventService) == null) {
                    destinationEventService = DestinationEventService.ANALYTICS;
                }
                Object obj = linkedHashMap.get(destinationEventService);
                if (obj == null) {
                    obj = new ArrayList();
                    linkedHashMap.put(destinationEventService, obj);
                }
                ((List) obj).add(next4);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Builder builder = this;
                AwaitKt.launch$default(GlobalScope.INSTANCE, null, null, new EventProcessor$sendEventsToDestination$1(builder, (DestinationEventService) entry.getKey(), (List) entry.getValue(), continuation, 0), 3);
                this = builder;
            }
        }

        public void set(String str, Object obj) {
            str.getClass();
            ((LinkedHashMap) this.url).put(str, obj);
            StateFlowImpl stateFlowImpl = (StateFlowImpl) ((LinkedHashMap) this.headers).get(str);
            if (stateFlowImpl != null) {
                stateFlowImpl.setValue(obj);
            }
            StateFlowImpl stateFlowImpl2 = (StateFlowImpl) ((LinkedHashMap) this.body).get(str);
            if (stateFlowImpl2 != null) {
                stateFlowImpl2.setValue(obj);
            }
        }

        public void show() {
            ((MenuPopupHelper) this.headers).show();
        }

        public void shrinkFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
            float f;
            float f2;
            boolean z2;
            int i5;
            int i6;
            boolean z3;
            int i7;
            float f3;
            FlexContainer flexContainer = (FlexContainer) this.url;
            int i8 = flexLine.mMainSize;
            float f4 = flexLine.mTotalFlexShrink;
            float f5 = RecyclerView.DECELERATION_RATE;
            if (f4 <= RecyclerView.DECELERATION_RATE || i3 > i8) {
                return;
            }
            float f6 = (i8 - i3) / f4;
            flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
            if (!z) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            int i9 = 0;
            boolean z4 = false;
            int i10 = 0;
            float f7 = 0.0f;
            while (i9 < flexLine.mItemCount) {
                int i11 = flexLine.mFirstIndex + i9;
                View reorderedFlexItemAt = flexContainer.getReorderedFlexItemAt(i11);
                if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                    f = f5;
                    f2 = f6;
                    z2 = z4;
                    i5 = i9;
                } else {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int flexDirection = flexContainer.getFlexDirection();
                    f = f5;
                    if (flexDirection == 0 || flexDirection == 1) {
                        f2 = f6;
                        z2 = z4;
                        int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr = (long[]) this.tags;
                        if (jArr != null) {
                            measuredWidth = (int) jArr[i11];
                        }
                        int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr2 = (long[]) this.tags;
                        if (jArr2 != null) {
                            measuredHeight = (int) (jArr2[i11] >> 32);
                        }
                        if (((boolean[]) this.method)[i11] || flexItem.getFlexShrink() <= f) {
                            i5 = i9;
                        } else {
                            float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f2);
                            if (i9 == flexLine.mItemCount - 1) {
                                flexShrink += f7;
                                f7 = f;
                            }
                            int round = Math.round(flexShrink);
                            if (round < flexItem.getMinWidth()) {
                                round = flexItem.getMinWidth();
                                ((boolean[]) this.method)[i11] = true;
                                flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                                z2 = true;
                                i5 = i9;
                            } else {
                                float f8 = (flexShrink - round) + f7;
                                i5 = i9;
                                double d = f8;
                                if (d > 1.0d) {
                                    round++;
                                    f8 -= 1.0f;
                                } else if (d < -1.0d) {
                                    round--;
                                    f8 += 1.0f;
                                }
                                f7 = f8;
                            }
                            int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                            reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                            int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i11, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                            flexContainer.updateViewCache(reorderedFlexItemAt, i11);
                            measuredWidth = measuredWidth2;
                            measuredHeight = measuredHeight2;
                        }
                        int max = Math.max(i10, flexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight);
                        flexLine.mMainSize = flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth + flexLine.mMainSize;
                        i6 = max;
                    } else {
                        int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr3 = (long[]) this.tags;
                        if (jArr3 != null) {
                            f2 = f6;
                            measuredHeight3 = (int) (jArr3[i11] >> 32);
                        } else {
                            f2 = f6;
                        }
                        int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr4 = (long[]) this.tags;
                        if (jArr4 != null) {
                            measuredWidth3 = (int) jArr4[i11];
                        }
                        if (((boolean[]) this.method)[i11] || flexItem.getFlexShrink() <= f) {
                            z3 = z4;
                        } else {
                            float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f2);
                            if (i9 == flexLine.mItemCount - 1) {
                                flexShrink2 += f7;
                                f7 = f;
                            }
                            int round2 = Math.round(flexShrink2);
                            if (round2 < flexItem.getMinHeight()) {
                                i7 = flexItem.getMinHeight();
                                ((boolean[]) this.method)[i11] = true;
                                flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                                z3 = true;
                            } else {
                                float f9 = (flexShrink2 - round2) + f7;
                                boolean z5 = z4;
                                double d2 = f9;
                                if (d2 > 1.0d) {
                                    i7 = round2 + 1;
                                    f3 = f9 - 1.0f;
                                } else if (d2 < -1.0d) {
                                    i7 = round2 - 1;
                                    f3 = f9 + 1.0f;
                                } else {
                                    i7 = round2;
                                    z3 = z5;
                                    f7 = f9;
                                }
                                f7 = f3;
                                z3 = z5;
                            }
                            int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                            reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                            int measuredWidth4 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i11, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                            flexContainer.updateViewCache(reorderedFlexItemAt, i11);
                            measuredWidth3 = measuredWidth4;
                            measuredHeight3 = measuredHeight4;
                        }
                        i6 = Math.max(i10, flexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth3);
                        flexLine.mMainSize = flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight3 + flexLine.mMainSize;
                        z2 = z3;
                        i5 = i9;
                    }
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i6);
                    i10 = i6;
                }
                i9 = i5 + 1;
                f5 = f;
                z4 = z2;
                f6 = f2;
            }
            if (!z4 || i8 == flexLine.mMainSize) {
                return;
            }
            shrinkFlexItems(i, i2, flexLine, i3, i4, true);
        }

        public void stretchViewHorizontally(View view, int i, int i2) {
            FlexItem flexItem = (FlexItem) view.getLayoutParams();
            int marginLeft = (i - flexItem.getMarginLeft()) - flexItem.getMarginRight();
            FlexContainer flexContainer = (FlexContainer) this.url;
            int min = Math.min(Math.max(marginLeft - flexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
            long[] jArr = (long[]) this.tags;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) (jArr[i2] >> 32) : view.getMeasuredHeight(), 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
            view.measure(makeMeasureSpec2, makeMeasureSpec);
            updateMeasureCache(i2, makeMeasureSpec2, makeMeasureSpec, view);
            flexContainer.updateViewCache(view, i2);
        }

        public void stretchViewVertically(View view, int i, int i2) {
            FlexItem flexItem = (FlexItem) view.getLayoutParams();
            int marginTop = (i - flexItem.getMarginTop()) - flexItem.getMarginBottom();
            FlexContainer flexContainer = (FlexContainer) this.url;
            int min = Math.min(Math.max(marginTop - flexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
            long[] jArr = (long[]) this.tags;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i2] : view.getMeasuredWidth(), 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            updateMeasureCache(i2, makeMeasureSpec, makeMeasureSpec2, view);
            flexContainer.updateViewCache(view, i2);
        }

        public void stretchViews(int i) {
            View reorderedFlexItemAt;
            FlexContainer flexContainer = (FlexContainer) this.url;
            if (i >= flexContainer.getFlexItemCount()) {
                return;
            }
            int flexDirection = flexContainer.getFlexDirection();
            if (flexContainer.getAlignItems() != 4) {
                for (FlexLine flexLine : flexContainer.getFlexLinesInternal()) {
                    Iterator it = flexLine.mIndicesAlignSelfStretch.iterator();
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        View reorderedFlexItemAt2 = flexContainer.getReorderedFlexItemAt(num.intValue());
                        if (flexDirection == 0 || flexDirection == 1) {
                            stretchViewVertically(reorderedFlexItemAt2, flexLine.mCrossSize, num.intValue());
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(flexDirection, "Invalid flex direction: "));
                                return;
                            }
                            stretchViewHorizontally(reorderedFlexItemAt2, flexLine.mCrossSize, num.intValue());
                        }
                    }
                }
                return;
            }
            int[] iArr = (int[]) this.headers;
            List flexLinesInternal = flexContainer.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
                FlexLine flexLine2 = (FlexLine) flexLinesInternal.get(i2);
                int i3 = flexLine2.mItemCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = flexLine2.mFirstIndex + i4;
                    if (i4 < flexContainer.getFlexItemCount() && (reorderedFlexItemAt = flexContainer.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                        FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                        if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                            if (flexDirection == 0 || flexDirection == 1) {
                                stretchViewVertically(reorderedFlexItemAt, flexLine2.mCrossSize, i5);
                            } else {
                                if (flexDirection != 2 && flexDirection != 3) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(flexDirection, "Invalid flex direction: "));
                                    return;
                                }
                                stretchViewHorizontally(reorderedFlexItemAt, flexLine2.mCrossSize, i5);
                            }
                        }
                    }
                }
            }
        }

        public void updateMeasureCache(int i, int i2, int i3, View view) {
            long[] jArr = (long[]) this.body;
            if (jArr != null) {
                jArr[i] = (i2 & 4294967295L) | (i3 << 32);
            }
            long[] jArr2 = (long[]) this.tags;
            if (jArr2 != null) {
                jArr2[i] = (view.getMeasuredHeight() << 32) | (4294967295L & view.getMeasuredWidth());
            }
        }

        public void url(String str) {
            str.getClass();
            if (StringsKt__StringsJVMKt.startsWith(str, "ws:", true)) {
                str = "http:".concat(str.substring(3));
            } else if (StringsKt__StringsJVMKt.startsWith(str, "wss:", true)) {
                str = "https:".concat(str.substring(4));
            }
            HttpUrl.Builder builder = new HttpUrl.Builder(0);
            builder.parse$okhttp(null, str);
            this.url = builder.m872build();
        }

        public void verifyAllDestinations() {
            Iterator it = ((ArrayList) this.tags).iterator();
            while (it.hasNext()) {
                int i = ((NavDeepLinkBuilder$DeepLinkDestination) it.next()).destinationId;
                if (findDestination(i) == null) {
                    int i2 = NavDestination.$r8$clinit;
                    Gson$$ExternalSyntheticBUOutline0.m$1(Animation.CC.m21m("Navigation destination ", UStringsKt.getDisplayName((NavContext) this.method, i), " cannot be found in the navigation graph "), (NavGraph) this.body);
                    return;
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public void visit(Name name, Object obj) {
            ((GsonBuilder) this.url).visit(name, obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, Name name) {
            return ((GsonBuilder) this.url).visitAnnotation(classId, name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor visitArray(Name name) {
            return ((GsonBuilder) this.url).visitArray(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public void visitClassLiteral(Name name, ClassLiteralValue classLiteralValue) {
            ((GsonBuilder) this.url).visitClassLiteral(name, classLiteralValue);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public void visitEnd() {
            ((GsonBuilder) this.method).visitEnd();
            GsonBuilder gsonBuilder = (GsonBuilder) this.headers;
            ((HashMap) gsonBuilder.instanceCreators).put((Name) this.body, new AnnotationValue((AnnotationDescriptor) CollectionsKt.single((List) this.tags)));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public void visitEnum(Name name, ClassId classId, Name name2) {
            ((GsonBuilder) this.url).visitEnum(name, classId, name2);
        }

        public void add(FileMapper fileMapper, KClass kClass) {
            ((ArrayList) this.method).add(new Pair(fileMapper, kClass));
        }

        public /* synthetic */ Builder(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
            this.url = obj;
            this.method = obj2;
            this.headers = obj3;
            this.body = obj4;
            this.tags = obj5;
        }

        public Builder(String str, String str2, String str3, WikipediaApp$$ExternalSyntheticLambda2 wikipediaApp$$ExternalSyntheticLambda2) {
            str2.getClass();
            this.method = str;
            this.url = str2;
            this.headers = str3;
            this.body = wikipediaApp$$ExternalSyntheticLambda2;
            this.tags = "custom";
        }

        public Builder(Map map) {
            map.getClass();
            this.url = new LinkedHashMap(map);
            this.method = new LinkedHashMap();
            this.headers = new LinkedHashMap();
            this.body = new LinkedHashMap();
            this.tags = new FragmentManager$$ExternalSyntheticLambda5(2, this);
        }

        public Builder(KClass kClass, Function0 function0, Function0 function02, Function0 function03) {
            kClass.getClass();
            this.url = kClass;
            this.method = function0;
            this.headers = function02;
            this.body = function03;
        }

        public /* synthetic */ Builder(ViewGroup viewGroup, View view, View view2, View view3, View view4, ViewGroup viewGroup2) {
            this.url = view;
            this.method = view2;
            this.headers = view3;
            this.body = view4;
            this.tags = viewGroup2;
        }

        public Builder(NavHostController navHostController) {
            Intent launchIntentForPackage;
            navHostController.getClass();
            Context context = navHostController.context;
            context.getClass();
            this.url = context;
            this.method = new NavContext(context, false);
            Activity activity = (Activity) SequencesKt.firstOrNull(SequencesKt.mapNotNull(SequencesKt.generateSequence(context, new PagingSource$$ExternalSyntheticLambda0(19)), new PagingSource$$ExternalSyntheticLambda0(20)));
            if (activity != null) {
                launchIntentForPackage = new Intent(context, activity.getClass());
            } else {
                launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                if (launchIntentForPackage == null) {
                    launchIntentForPackage = new Intent();
                }
            }
            launchIntentForPackage.addFlags(268468224);
            this.headers = launchIntentForPackage;
            this.tags = new ArrayList();
            this.body = navHostController.impl.getGraph$navigation_runtime_release();
        }

        public Builder(Context context, View view, int i) {
            this(context, view, i, R.attr.popupMenuStyle, 0);
        }

        public Builder(FlexContainer flexContainer) {
            this.url = flexContainer;
        }

        public Builder(Context context, View view, int i, int i2, int i3) {
            this.method = view;
            MenuBuilder menuBuilder = new MenuBuilder(context);
            this.url = menuBuilder;
            int i4 = 0;
            menuBuilder.mCallback = new PopupMenu$1(i4, this);
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(i2, i3, context, view, menuBuilder, false);
            this.headers = menuPopupHelper;
            menuPopupHelper.mDropDownGravity = i;
            menuPopupHelper.mOnDismissListener = new PopupMenu$2(i4, this);
        }

        public Builder(ActivityPageBinding activityPageBinding, TypeParameterResolver typeParameterResolver, Lazy lazy) {
            typeParameterResolver.getClass();
            this.url = activityPageBinding;
            this.method = typeParameterResolver;
            this.headers = lazy;
            this.body = lazy;
            typeParameterResolver.getClass();
            MultipartBody.Builder builder = new MultipartBody.Builder();
            builder.boundary = this;
            builder.type = typeParameterResolver;
            builder.parts = new FormBody.Builder(new Transition.AnonymousClass1(28, false));
            this.tags = builder;
        }

        public Builder(int i) {
            switch (i) {
                case 2:
                    this.url = new Object();
                    this.headers = new AtomicInt(0);
                    this.body = new MutableObjectList();
                    this.tags = new MutableObjectList();
                    break;
                default:
                    this.tags = EmptyTags.INSTANCE;
                    this.method = "GET";
                    this.headers = new Headers.Builder(0, (byte) 0);
                    break;
            }
        }
    }
}
