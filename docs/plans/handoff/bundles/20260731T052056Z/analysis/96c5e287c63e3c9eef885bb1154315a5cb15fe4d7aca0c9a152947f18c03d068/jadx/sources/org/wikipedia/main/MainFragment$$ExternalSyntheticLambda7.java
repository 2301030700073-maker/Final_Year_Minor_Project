package org.wikipedia.main;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.collection.MutableObjectIntMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.HorizontalScrollLayoutModifier;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import j$.util.DesugarTimeZone;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.ShareUtil$shareImage$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MainFragment$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ MainFragment$$ExternalSyntheticLambda7(Object obj, Object obj2, int i, Serializable serializable, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = i;
        this.f$3 = serializable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 0;
        int i3 = 1;
        Unit unit = Unit.INSTANCE;
        int i4 = this.f$2;
        Object obj2 = this.f$3;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                MainFragment mainFragment = (MainFragment) obj4;
                String str = (String) obj3;
                String str2 = (String) obj2;
                Bitmap bitmap = (Bitmap) obj;
                bitmap.getClass();
                if (mainFragment.isAdded()) {
                    LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(mainFragment);
                    Context requireContext = mainFragment.requireContext();
                    String name = new File(str).getName();
                    name.getClass();
                    String string = mainFragment.requireContext().getString(R.string.feed_featured_image_share_subject);
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    Calendar calendar = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
                    calendar.add(5, -i4);
                    Date time = calendar.getTime();
                    time.getClass();
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    DateFormat mediumDateFormat = android.text.format.DateFormat.getMediumDateFormat(Jsoup.getInstance());
                    mediumDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
                    String format = mediumDateFormat.format(time);
                    format.getClass();
                    str2.getClass();
                    AwaitKt.launch$default(lifecycleScope, new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(requireContext), null, new ShareUtil$shareImage$2(requireContext, string + " | " + format, str2, (Function0) null, bitmap, name, (Continuation) null), 2);
                }
                return unit;
            case 1:
                Placeable[] placeableArr = (Placeable[]) obj4;
                RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i5 = 0;
                while (i2 < length) {
                    Placeable placeable = placeableArr[i2];
                    int i6 = i5 + 1;
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    OffsetKt offsetKt = rowColumnParentData != null ? rowColumnParentData.crossAxisAlignment : null;
                    Placeable.PlacementScope.place$default(placementScope, placeable, iArr[i5], offsetKt != null ? offsetKt.align$foundation_layout(i4, placeable.height, LayoutDirection.Ltr) : rowMeasurePolicy.verticalAlignment.align(placeable.height, i4));
                    i2++;
                    i5 = i6;
                }
                return unit;
            case 2:
                HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = (HorizontalScrollLayoutModifier) obj4;
                MeasureScope measureScope = (MeasureScope) obj3;
                Placeable placeable2 = (Placeable) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int i7 = horizontalScrollLayoutModifier.cursorOffset;
                TextFieldScrollerPosition textFieldScrollerPosition = horizontalScrollLayoutModifier.scrollerPosition;
                TransformedText transformedText = horizontalScrollLayoutModifier.transformedText;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) horizontalScrollLayoutModifier.textLayoutResultProvider.invoke();
                textFieldScrollerPosition.update(Orientation.Horizontal, BasicTextKt.getCursorRectInScroller(placementScope2, i7, transformedText, textLayoutResultProxy != null ? textLayoutResultProxy.value : null, measureScope.getLayoutDirection() == LayoutDirection.Rtl, placeable2.width), i4, placeable2.width);
                Placeable.PlacementScope.placeRelative$default(placementScope2, placeable2, Math.round(-textFieldScrollerPosition.offset$delegate.getFloatValue()), 0);
                return unit;
            case 3:
                ArrayList arrayList = (ArrayList) obj4;
                MeasureScope measureScope2 = (MeasureScope) obj3;
                ArrayList arrayList2 = (ArrayList) obj2;
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                int i8 = 0;
                while (i8 < size) {
                    List list = (List) arrayList.get(i8);
                    int size2 = list.size();
                    int[] iArr2 = new int[size2];
                    int i9 = 0;
                    while (i9 < size2) {
                        iArr2[i9] = ((Placeable) list.get(i9)).width + (i9 < list.size() - i3 ? measureScope2.mo81roundToPx0680j_4(8.0f) : 0);
                        i9++;
                    }
                    int[] iArr3 = new int[size2];
                    if (measureScope2.getLayoutDirection() == LayoutDirection.Ltr) {
                        int i10 = 0;
                        for (int i11 = 0; i11 < size2; i11++) {
                            i10 += iArr2[i11];
                        }
                        int i12 = i4 - i10;
                        int i13 = 0;
                        int i14 = 0;
                        while (i13 < size2) {
                            int i15 = iArr2[i13];
                            iArr3[i14] = i12;
                            i12 += i15;
                            i13++;
                            i14++;
                        }
                    } else {
                        int i16 = 0;
                        for (int i17 = size2 - 1; -1 < i17; i17--) {
                            int i18 = iArr2[i17];
                            iArr3[i17] = i16;
                            i16 += i18;
                        }
                    }
                    int size3 = list.size();
                    for (int i19 = 0; i19 < size3; i19++) {
                        Placeable.PlacementScope.place$default(placementScope3, (Placeable) list.get(i19), iArr3[i19], ((Number) arrayList2.get(i8)).intValue());
                    }
                    i8++;
                    i3 = 1;
                }
                return unit;
            default:
                IntRef intRef = (IntRef) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                if (obj == ((DerivedSnapshotState) obj4)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("A derived state calculation cannot read itself");
                    return null;
                }
                if (obj instanceof StateObject) {
                    int i20 = intRef.element - i4;
                    int findKeyIndex = mutableObjectIntMap.findKeyIndex(obj);
                    mutableObjectIntMap.set(Math.min(i20, findKeyIndex >= 0 ? mutableObjectIntMap.values[findKeyIndex] : Integer.MAX_VALUE), obj);
                }
                return unit;
        }
    }

    public /* synthetic */ MainFragment$$ExternalSyntheticLambda7(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
        this.f$2 = i;
    }
}
