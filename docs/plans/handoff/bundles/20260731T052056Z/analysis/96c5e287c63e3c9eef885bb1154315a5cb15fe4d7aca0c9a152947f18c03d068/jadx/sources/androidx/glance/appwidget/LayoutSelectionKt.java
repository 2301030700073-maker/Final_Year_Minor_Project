package androidx.glance.appwidget;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.HeightModifier;
import androidx.glance.layout.WidthModifier;
import androidx.glance.unit.Dimension;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LayoutSelectionKt {
    public static final Map LayoutMap = MapsKt__MapsKt.mapOf(new Pair(LayoutType.Text, Integer.valueOf(R.layout.glance_text)), new Pair(LayoutType.List, Integer.valueOf(R.layout.glance_list)), new Pair(LayoutType.CheckBox, Integer.valueOf(R.layout.glance_check_box)), new Pair(LayoutType.CheckBoxBackport, Integer.valueOf(R.layout.glance_check_box_backport)), new Pair(LayoutType.Button, Integer.valueOf(R.layout.glance_button)), new Pair(LayoutType.Swtch, Integer.valueOf(R.layout.glance_swtch)), new Pair(LayoutType.SwtchBackport, Integer.valueOf(R.layout.glance_swtch_backport)), new Pair(LayoutType.Frame, Integer.valueOf(R.layout.glance_frame)), new Pair(LayoutType.ImageCrop, Integer.valueOf(R.layout.glance_image_crop)), new Pair(LayoutType.ImageCropDecorative, Integer.valueOf(R.layout.glance_image_crop_decorative)), new Pair(LayoutType.ImageFit, Integer.valueOf(R.layout.glance_image_fit)), new Pair(LayoutType.ImageFitDecorative, Integer.valueOf(R.layout.glance_image_fit_decorative)), new Pair(LayoutType.ImageFillBounds, Integer.valueOf(R.layout.glance_image_fill_bounds)), new Pair(LayoutType.ImageFillBoundsDecorative, Integer.valueOf(R.layout.glance_image_fill_bounds_decorative)), new Pair(LayoutType.LinearProgressIndicator, Integer.valueOf(R.layout.glance_linear_progress_indicator)), new Pair(LayoutType.CircularProgressIndicator, Integer.valueOf(R.layout.glance_circular_progress_indicator)), new Pair(LayoutType.VerticalGridOneColumn, Integer.valueOf(R.layout.glance_vertical_grid_one_column)), new Pair(LayoutType.VerticalGridTwoColumns, Integer.valueOf(R.layout.glance_vertical_grid_two_columns)), new Pair(LayoutType.VerticalGridThreeColumns, Integer.valueOf(R.layout.glance_vertical_grid_three_columns)), new Pair(LayoutType.VerticalGridFourColumns, Integer.valueOf(R.layout.glance_vertical_grid_four_columns)), new Pair(LayoutType.VerticalGridFiveColumns, Integer.valueOf(R.layout.glance_vertical_grid_five_columns)), new Pair(LayoutType.VerticalGridAutoFit, Integer.valueOf(R.layout.glance_vertical_grid_auto_fit)), new Pair(LayoutType.RadioButton, Integer.valueOf(R.layout.glance_radio_button)), new Pair(LayoutType.RadioButtonBackport, Integer.valueOf(R.layout.glance_radio_button_backport)));
    public static final int RootAliasTypeCount;
    public static final int TopLevelLayoutsCount;

    static {
        int size = GeneratedLayoutsKt.generatedRootLayoutShifts.size();
        RootAliasTypeCount = size;
        TopLevelLayoutsCount = Build.VERSION.SDK_INT >= 31 ? GeneratedLayoutsKt.RootAliasCount : GeneratedLayoutsKt.RootAliasCount / size;
    }

    public static final RemoteViewsInfo createRootView(TranslationContext translationContext, GlanceModifier glanceModifier, int i) {
        Map singletonMap;
        Integer valueOf = Integer.valueOf(R.id.rootStubId);
        Context context = translationContext.context;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            int i3 = GeneratedLayoutsKt.RootAliasCount;
            if (i >= i3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m(i3, i, "Index of the root view cannot be more than ", ", currently "));
                return null;
            }
            LayoutSize layoutSize = LayoutSize.Wrap;
            SizeSelector sizeSelector = new SizeSelector(layoutSize, layoutSize);
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), GeneratedLayoutsKt.FirstRootAlias + i);
            WidthModifier widthModifier = (WidthModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$3);
            if (widthModifier != null) {
                UtilsKt.applySimpleWidthModifier(context, remoteViews, widthModifier, R.id.rootView);
            }
            HeightModifier heightModifier = (HeightModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$4);
            if (heightModifier != null) {
                UtilsKt.applySimpleHeightModifier(context, remoteViews, heightModifier, R.id.rootView);
            }
            if (i2 >= 33) {
                remoteViews.removeAllViews(R.id.rootView);
            }
            if (i2 >= 33) {
                singletonMap = EmptyMap.INSTANCE;
            } else {
                Map singletonMap2 = Collections.singletonMap(sizeSelector, valueOf);
                singletonMap2.getClass();
                singletonMap = Collections.singletonMap(0, singletonMap2);
                singletonMap.getClass();
            }
            return new RemoteViewsInfo(remoteViews, new InsertedViewInfo(R.id.rootView, 0, singletonMap, 2));
        }
        int i4 = RootAliasTypeCount * i;
        int i5 = GeneratedLayoutsKt.RootAliasCount;
        if (i4 >= i5) {
            throw new IllegalArgumentException(("Index of the root view cannot be more than " + (i5 / 4) + ", currently " + i).toString());
        }
        WidthModifier widthModifier2 = (WidthModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$1);
        Dimension dimension = Dimension.Wrap.INSTANCE;
        Dimension resolveDimension = widthModifier2 != null ? resolveDimension(widthModifier2.width, context) : dimension;
        HeightModifier heightModifier2 = (HeightModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$2);
        if (heightModifier2 != null) {
            dimension = resolveDimension(heightModifier2.height, context);
        }
        Dimension.Fill fill = Dimension.Fill.INSTANCE;
        LayoutSize layoutSize2 = resolveDimension.equals(fill) ? LayoutSize.MatchParent : LayoutSize.Wrap;
        LayoutSize layoutSize3 = dimension.equals(fill) ? LayoutSize.MatchParent : LayoutSize.Wrap;
        LayoutSize layoutSize4 = LayoutSize.Fixed;
        SizeSelector sizeSelector2 = new SizeSelector(layoutSize2 == layoutSize4 ? LayoutSize.Wrap : layoutSize2, layoutSize3 == layoutSize4 ? LayoutSize.Wrap : layoutSize3);
        Integer num = (Integer) GeneratedLayoutsKt.generatedRootLayoutShifts.get(sizeSelector2);
        if (num != null) {
            RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), i4 + GeneratedLayoutsKt.FirstRootAlias + num.intValue());
            Map singletonMap3 = Collections.singletonMap(sizeSelector2, valueOf);
            singletonMap3.getClass();
            Map singletonMap4 = Collections.singletonMap(0, singletonMap3);
            singletonMap4.getClass();
            return new RemoteViewsInfo(remoteViews2, new InsertedViewInfo(0, 0, singletonMap4, 3));
        }
        throw new IllegalStateException("Cannot find root element for size [" + layoutSize2 + ", " + layoutSize3 + ']');
    }

    /* renamed from: insertContainerView-nVsUan0, reason: not valid java name */
    public static final InsertedViewInfo m742insertContainerViewnVsUan0(RemoteViews remoteViews, TranslationContext translationContext, LayoutType layoutType, int i, GlanceModifier glanceModifier, Alignment.Horizontal horizontal, Alignment.Vertical vertical) {
        int intValue;
        if (i > 10) {
            Log.e("GlanceAppWidget", "Truncated " + layoutType + " container from " + i + " to 10 elements", new IllegalArgumentException(layoutType + " container cannot have more than 10 elements"));
        }
        int i2 = i <= 10 ? i : 10;
        Integer selectLayout33 = selectLayout33(layoutType, glanceModifier);
        if (selectLayout33 != null) {
            intValue = selectLayout33.intValue();
        } else {
            ContainerInfo containerInfo = (ContainerInfo) GeneratedLayoutsKt.generatedContainers.get(new ContainerSelector(layoutType, i2, horizontal, vertical));
            Integer valueOf = containerInfo != null ? Integer.valueOf(containerInfo.layoutId) : null;
            if (valueOf == null) {
                throw new IllegalArgumentException("Cannot find container " + layoutType + " with " + i + " children");
            }
            intValue = valueOf.intValue();
        }
        Map map = (Map) GeneratedLayoutsKt.generatedChildren.get(layoutType);
        if (map == null) {
            Gson$$ExternalSyntheticBUOutline0.m("Cannot find generated children for ", layoutType);
            return null;
        }
        InsertedViewInfo insertViewInternal = insertViewInternal(remoteViews, translationContext, intValue, glanceModifier);
        int i3 = insertViewInternal.mainViewId;
        InsertedViewInfo insertedViewInfo = new InsertedViewInfo(i3, insertViewInternal.complexViewId, map);
        if (Build.VERSION.SDK_INT >= 33) {
            remoteViews.removeAllViews(i3);
        }
        return insertedViewInfo;
    }

    public static final InsertedViewInfo insertView(RemoteViews remoteViews, TranslationContext translationContext, LayoutType layoutType, GlanceModifier glanceModifier) {
        Integer selectLayout33 = selectLayout33(layoutType, glanceModifier);
        if (selectLayout33 != null || (selectLayout33 = (Integer) LayoutMap.get(layoutType)) != null) {
            return insertViewInternal(remoteViews, translationContext, selectLayout33.intValue(), glanceModifier);
        }
        Gson$$ExternalSyntheticBUOutline0.m("Cannot use `insertView` with a container like ", layoutType);
        return null;
    }

    public static final InsertedViewInfo insertViewInternal(RemoteViews remoteViews, TranslationContext translationContext, int i, GlanceModifier glanceModifier) {
        Integer valueOf;
        int i2 = translationContext.itemPosition;
        Context context = translationContext.context;
        WidthModifier widthModifier = (WidthModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$5);
        Dimension dimension = Dimension.Wrap.INSTANCE;
        Dimension dimension2 = widthModifier != null ? widthModifier.width : dimension;
        HeightModifier heightModifier = (HeightModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$6);
        if (heightModifier != null) {
            dimension = heightModifier.height;
        }
        if (glanceModifier.all()) {
            valueOf = null;
        } else {
            if (translationContext.isBackgroundSpecified.getAndSet(true)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("At most one view can be set as AppWidgetBackground.");
                return null;
            }
            valueOf = Integer.valueOf(android.R.id.background);
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 33) {
            int intValue = valueOf != null ? valueOf.intValue() : translationContext.lastViewId.incrementAndGet();
            RemoteViews remoteViews2 = LayoutSelectionApi31Impl.INSTANCE.remoteViews(context.getPackageName(), i, intValue);
            int i4 = translationContext.parentContext.mainViewId;
            if (i3 >= 31) {
                RemoteViewsTranslatorApi31Impl.INSTANCE.addChildView(remoteViews, i4, remoteViews2, i2);
            } else {
                remoteViews.addView(i4, remoteViews2);
            }
            return new InsertedViewInfo(intValue, 0, null, 6);
        }
        if (i3 >= 31) {
            Dimension.Expand expand = Dimension.Expand.INSTANCE;
            return new InsertedViewInfo(OperationKt.inflateViewStub(remoteViews, translationContext, selectChild(remoteViews, translationContext, i2, dimension2.equals(expand) ? LayoutSize.Expand : LayoutSize.Wrap, dimension.equals(expand) ? LayoutSize.Expand : LayoutSize.Wrap), i, valueOf), 0, null, 6);
        }
        LayoutSize specSize = toSpecSize(resolveDimension(dimension2, context));
        LayoutSize specSize2 = toSpecSize(resolveDimension(dimension, context));
        int selectChild = selectChild(remoteViews, translationContext, i2, specSize, specSize2);
        LayoutSize layoutSize = LayoutSize.Fixed;
        if (specSize != layoutSize && specSize2 != layoutSize) {
            return new InsertedViewInfo(OperationKt.inflateViewStub(remoteViews, translationContext, selectChild, i, valueOf), 0, null, 6);
        }
        LayoutInfo layoutInfo = (LayoutInfo) GeneratedLayoutsKt.generatedComplexLayouts.get(new SizeSelector(specSize, specSize2));
        if (layoutInfo != null) {
            return new InsertedViewInfo(OperationKt.inflateViewStub(remoteViews, translationContext, R.id.glanceViewStub, i, valueOf), OperationKt.inflateViewStub(remoteViews, translationContext, selectChild, layoutInfo.layoutId, null), null, 4);
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not find complex layout for width=", specSize, ", height=", specSize2);
        return null;
    }

    public static final Dimension resolveDimension(Dimension dimension, Context context) {
        if (!(dimension instanceof Dimension.Resource)) {
            return dimension;
        }
        float dimension2 = context.getResources().getDimension(R.dimen.glance_component_button_corners);
        int i = (int) dimension2;
        return i != -2 ? i != -1 ? new Dimension.Dp(dimension2 / context.getResources().getDisplayMetrics().density) : Dimension.Fill.INSTANCE : Dimension.Wrap.INSTANCE;
    }

    public static final int selectChild(RemoteViews remoteViews, TranslationContext translationContext, int i, LayoutSize layoutSize, LayoutSize layoutSize2) {
        LayoutSize layoutSize3 = LayoutSize.Fixed;
        SizeSelector sizeSelector = new SizeSelector(layoutSize == layoutSize3 ? LayoutSize.Wrap : layoutSize, layoutSize2 == layoutSize3 ? LayoutSize.Wrap : layoutSize2);
        Map map = (Map) translationContext.parentContext.children.get(Integer.valueOf(i));
        if (map == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m(i, "Parent doesn't have child position "));
            return 0;
        }
        Integer num = (Integer) map.get(sizeSelector);
        if (num == null) {
            throw new IllegalStateException("No child for position " + i + " and size " + layoutSize + " x " + layoutSize2);
        }
        int intValue = num.intValue();
        Collection values = map.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            if (((Number) obj).intValue() != intValue) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            OperationKt.inflateViewStub(remoteViews, translationContext, ((Number) it.next()).intValue(), R.layout.glance_deleted_view, Integer.valueOf(R.id.deletedViewId));
        }
        return intValue;
    }

    public static final Integer selectLayout33(LayoutType layoutType, GlanceModifier glanceModifier) {
        if (Build.VERSION.SDK_INT >= 33) {
            AlignmentModifier alignmentModifier = (AlignmentModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$7);
            WidthModifier widthModifier = (WidthModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$8);
            Dimension.Expand expand = Dimension.Expand.INSTANCE;
            boolean equals = widthModifier != null ? widthModifier.width.equals(expand) : false;
            HeightModifier heightModifier = (HeightModifier) glanceModifier.foldIn(null, SizeBoxKt$SizeBox$1$2$1.INSTANCE$9);
            boolean equals2 = heightModifier != null ? heightModifier.height.equals(expand) : false;
            if (alignmentModifier != null) {
                Alignment alignment = alignmentModifier.alignment;
                LayoutInfo layoutInfo = (LayoutInfo) GeneratedLayoutsKt.generatedBoxChildren.get(new BoxChildSelector(layoutType, alignment.horizontal, alignment.vertical));
                if (layoutInfo != null) {
                    return Integer.valueOf(layoutInfo.layoutId);
                }
                Utils$$ExternalSyntheticBUOutline0.m("Cannot find ", layoutType, " with alignment ", alignment);
                return null;
            }
            if (equals || equals2) {
                LayoutInfo layoutInfo2 = (LayoutInfo) GeneratedLayoutsKt.generatedRowColumnChildren.get(new RowColumnChildSelector(layoutType, equals, equals2));
                if (layoutInfo2 != null) {
                    return Integer.valueOf(layoutInfo2.layoutId);
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m$1(layoutType, " with defaultWeight set", "Cannot find ");
                return null;
            }
        }
        return null;
    }

    public static final LayoutSize toSpecSize(Dimension dimension) {
        if (dimension instanceof Dimension.Wrap) {
            return LayoutSize.Wrap;
        }
        if (dimension instanceof Dimension.Expand) {
            return LayoutSize.Expand;
        }
        if (dimension instanceof Dimension.Fill) {
            return LayoutSize.MatchParent;
        }
        if (dimension instanceof Dimension.Dp ? true : dimension instanceof Dimension.Resource) {
            return LayoutSize.Fixed;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }
}
