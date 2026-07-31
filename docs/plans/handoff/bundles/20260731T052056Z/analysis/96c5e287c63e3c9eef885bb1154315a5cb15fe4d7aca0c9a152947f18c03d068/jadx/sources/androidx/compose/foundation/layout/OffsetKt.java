package androidx.compose.foundation.layout;

import android.view.View;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import androidx.glance.layout.SpacerKt$Spacer$3;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OffsetKt {
    public static final int End = 6;
    public static final int Horizontal = 15;
    public static final int Left = 10;
    public static final int Right = 5;
    public static final int Start = 9;

    /* renamed from: Left, reason: collision with other field name */
    public static final Arrangement$End$1 f3Left = new Arrangement$End$1(1);

    /* renamed from: Right, reason: collision with other field name */
    public static final Arrangement$End$1 f4Right = new Arrangement$End$1(2);

    /* renamed from: Start, reason: collision with other field name */
    public static final Arrangement$End$1 f5Start = new Arrangement$End$1(6);

    /* renamed from: End, reason: collision with other field name */
    public static final Arrangement$End$1 f2End = new Arrangement$End$1(0);
    public static final Arrangement$End$1 Top = new Arrangement$End$1(7);
    public static final Arrangement$End$1 Center = new Arrangement$End$1(4);
    public static final Arrangement$End$1 SpaceBetween = new Arrangement$End$1(5);
    public static final FixedIntInsets EmptyWindowInsets = new FixedIntInsets();
    public static final BasicTextKt$$ExternalSyntheticLambda3 safeDrawingLambda = new BasicTextKt$$ExternalSyntheticLambda3(8);
    public static final BasicTextKt$$ExternalSyntheticLambda3 statusBarsLambda = new BasicTextKt$$ExternalSyntheticLambda3(9);
    public static final BasicTextKt$$ExternalSyntheticLambda3 imeLambda = new BasicTextKt$$ExternalSyntheticLambda3(10);
    public static final BasicTextKt$$ExternalSyntheticLambda3 navigationBarsLambda = new BasicTextKt$$ExternalSyntheticLambda3(11);

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void BoxWithConstraints(androidx.compose.ui.Modifier r14, androidx.compose.ui.Alignment r15, boolean r16, androidx.compose.runtime.internal.ComposableLambdaImpl r17, androidx.compose.runtime.GapComposer r18, int r19, int r20) {
        /*
            r4 = r17
            r0 = r18
            r5 = r19
            r1 = 380139498(0x16a877ea, float:2.721754E-25)
            r0.startRestartGroup(r1)
            r1 = r5 & 6
            r2 = 2
            if (r1 != 0) goto L1c
            boolean r1 = r0.changed(r14)
            if (r1 == 0) goto L19
            r1 = 4
            goto L1a
        L19:
            r1 = r2
        L1a:
            r1 = r1 | r5
            goto L1d
        L1c:
            r1 = r5
        L1d:
            r3 = r20 & 2
            if (r3 == 0) goto L24
            r1 = r1 | 48
            goto L34
        L24:
            r6 = r5 & 48
            if (r6 != 0) goto L34
            boolean r7 = r0.changed(r15)
            if (r7 == 0) goto L31
            r7 = 32
            goto L33
        L31:
            r7 = 16
        L33:
            r1 = r1 | r7
        L34:
            r7 = r20 & 4
            if (r7 == 0) goto L3d
            r1 = r1 | 384(0x180, float:5.38E-43)
        L3a:
            r8 = r16
            goto L4f
        L3d:
            r8 = r5 & 384(0x180, float:5.38E-43)
            if (r8 != 0) goto L3a
            r8 = r16
            boolean r9 = r0.changed(r8)
            if (r9 == 0) goto L4c
            r9 = 256(0x100, float:3.59E-43)
            goto L4e
        L4c:
            r9 = 128(0x80, float:1.8E-43)
        L4e:
            r1 = r1 | r9
        L4f:
            r9 = r5 & 3072(0xc00, float:4.305E-42)
            r10 = 2048(0x800, float:2.87E-42)
            if (r9 != 0) goto L60
            boolean r9 = r0.changedInstance(r4)
            if (r9 == 0) goto L5d
            r9 = r10
            goto L5f
        L5d:
            r9 = 1024(0x400, float:1.435E-42)
        L5f:
            r1 = r1 | r9
        L60:
            r9 = r1 & 1171(0x493, float:1.641E-42)
            r11 = 1170(0x492, float:1.64E-42)
            r12 = 0
            r13 = 1
            if (r9 == r11) goto L6a
            r9 = r13
            goto L6b
        L6a:
            r9 = r12
        L6b:
            r11 = r1 & 1
            boolean r9 = r0.shouldExecute(r11, r9)
            if (r9 == 0) goto La7
            if (r3 == 0) goto L78
            androidx.compose.ui.BiasAlignment r3 = androidx.compose.ui.Alignment.Companion.TopStart
            goto L79
        L78:
            r3 = r15
        L79:
            if (r7 == 0) goto L7c
            r8 = r12
        L7c:
            androidx.compose.ui.layout.MeasurePolicy r6 = androidx.compose.foundation.layout.BoxKt.maybeCachedBoxMeasurePolicy(r3, r8)
            r7 = r1 & 7168(0x1c00, float:1.0045E-41)
            if (r7 != r10) goto L85
            goto L86
        L85:
            r13 = r12
        L86:
            boolean r7 = r0.changed(r6)
            r7 = r7 | r13
            java.lang.Object r9 = r0.rememberedValue()
            if (r7 != 0) goto L95
            androidx.compose.runtime.NeverEqualPolicy r7 = androidx.compose.runtime.Composer$Companion.Empty
            if (r9 != r7) goto L9d
        L95:
            org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17 r9 = new org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17
            r9.<init>(r2, r6, r4)
            r0.updateRememberedValue(r9)
        L9d:
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9
            r1 = r1 & 14
            androidx.compose.ui.layout.RulerKt.SubcomposeLayout(r14, r9, r0, r1, r12)
            r2 = r3
        La5:
            r3 = r8
            goto Lac
        La7:
            r0.skipToGroupEnd()
            r2 = r15
            goto La5
        Lac:
            androidx.compose.runtime.RecomposeScopeImpl r7 = r0.endRestartGroup()
            if (r7 == 0) goto Lbc
            androidx.compose.foundation.layout.BoxWithConstraintsKt$$ExternalSyntheticLambda1 r0 = new androidx.compose.foundation.layout.BoxWithConstraintsKt$$ExternalSyntheticLambda1
            r1 = r14
            r6 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r7.block = r0
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.OffsetKt.BoxWithConstraints(androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void FlowRow(Modifier modifier, Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, int i, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i2) {
        int i3;
        int i4;
        BiasAlignment.Vertical vertical = Alignment.Companion.Top;
        gapComposer.startRestartGroup(-1956591841);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(arrangement$Horizontal) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changed(arrangement$Vertical) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer.changed(vertical) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposer.changed(i) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposer.changed(Integer.MAX_VALUE) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposer.changed(flowRowOverflow) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i5 = i3;
        if (gapComposer.shouldExecute(i5 & 1, (i5 & 4793491) != 4793490)) {
            int i6 = i5 & 3670016;
            boolean z = i6 == 1048576;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new FlowLayoutOverflowState(flowRowOverflow.type);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) rememberedValue;
            int i7 = i5 >> 3;
            boolean changed = ((((i7 & 14) ^ 6) > 4 && gapComposer.changed(arrangement$Horizontal)) || (i7 & 6) == 4) | ((((i7 & 112) ^ 48) > 32 && gapComposer.changed(arrangement$Vertical)) || (i7 & 48) == 32) | ((((i7 & 896) ^ 384) > 256 && gapComposer.changed(vertical)) || (i7 & 384) == 256) | ((((i7 & 7168) ^ 3072) > 2048 && gapComposer.changed(i)) || (i7 & 3072) == 2048) | ((((57344 & i7) ^ 24576) > 16384 && gapComposer.changed(Integer.MAX_VALUE)) || (i7 & 24576) == 16384) | gapComposer.changed(flowLayoutOverflowState);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                i4 = i6;
                Object flowMeasurePolicy = new FlowMeasurePolicy(arrangement$Horizontal, arrangement$Vertical, arrangement$Horizontal.mo110getSpacingD9Ej5fM(), new CrossAxisAlignment$VerticalCrossAxisAlignment(vertical), arrangement$Vertical.mo110getSpacingD9Ej5fM(), i, flowLayoutOverflowState);
                gapComposer.updateRememberedValue(flowMeasurePolicy);
                rememberedValue2 = flowMeasurePolicy;
            } else {
                i4 = i6;
            }
            FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) rememberedValue2;
            boolean z2 = (i4 == 1048576) | ((i5 & 29360128) == 8388608) | ((i5 & 458752) == 131072);
            Object rememberedValue3 = gapComposer.rememberedValue();
            Object obj2 = rememberedValue3;
            if (z2 || rememberedValue3 == obj) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ComposableLambdaImpl(new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, 1), true, -1192950673));
                flowRowOverflow.getClass();
                int i8 = FlowLayoutOverflow$WhenMappings.$EnumSwitchMapping$0[flowRowOverflow.type.ordinal()];
                gapComposer.updateRememberedValue(arrayList);
                obj2 = arrayList;
            }
            ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(new SpacerKt$Spacer$3(3, (List) obj2), true, 1271844412);
            boolean changed2 = gapComposer.changed(flowMeasurePolicy2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue4 == obj) {
                rememberedValue4 = new MultiContentMeasurePolicyImpl(flowMeasurePolicy2);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue4;
            long j = gapComposer.compositeKeyHashCode;
            int i9 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            Function0 function0 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i9), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl2.invoke((Object) gapComposer, (Object) 0);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FlowLayoutKt$$ExternalSyntheticLambda3(modifier, arrangement$Horizontal, arrangement$Vertical, i, flowRowOverflow, composableLambdaImpl, i2);
        }
    }

    /* renamed from: PaddingValues-YgX7TsA$default, reason: not valid java name */
    public static PaddingValuesImpl m125PaddingValuesYgX7TsA$default(int i, float f) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        return new PaddingValuesImpl(f, RecyclerView.DECELERATION_RATE, f, RecyclerView.DECELERATION_RATE);
    }

    /* renamed from: PaddingValues-a9UjIt4$default, reason: not valid java name */
    public static PaddingValuesImpl m126PaddingValuesa9UjIt4$default(float f, float f2, float f3, float f4, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return new PaddingValuesImpl(f, f2, f3, f4);
    }

    public static final void Spacer(GapComposer gapComposer, Modifier modifier) {
        SpacerMeasurePolicy spacerMeasurePolicy = SpacerMeasurePolicy.INSTANCE;
        long j = gapComposer.compositeKeyHashCode;
        int i = (int) (j ^ (j >>> 32));
        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
        ComposeUiNode.Companion.getClass();
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
        gapComposer.startReusableNode();
        if (gapComposer.inserting) {
            gapComposer.createNode(layoutNode$Companion$Constructor$1);
        } else {
            gapComposer.useNode();
        }
        Updater.m327setimpl(gapComposer, spacerMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
        Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
        Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
        Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
        Updater.m327setimpl(gapComposer, Integer.valueOf(i), ComposeUiNode.Companion.SetCompositeKeyHash);
        gapComposer.end(true);
    }

    public static final float calculateEndPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo122calculateRightPaddingu2uoSUM(layoutDirection) : paddingValues.mo121calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    public static final float calculateStartPadding(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? paddingValues.mo121calculateLeftPaddingu2uoSUM(layoutDirection) : paddingValues.mo122calculateRightPaddingu2uoSUM(layoutDirection);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m127constructorimpl(long j, LayoutOrientation layoutOrientation) {
        LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
        return ConstraintsKt.Constraints(layoutOrientation == layoutOrientation2 ? Constraints.m683getMinWidthimpl(j) : Constraints.m682getMinHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m681getMaxWidthimpl(j) : Constraints.m680getMaxHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m682getMinHeightimpl(j) : Constraints.m683getMinWidthimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m680getMaxHeightimpl(j) : Constraints.m681getMaxWidthimpl(j));
    }

    public static WindowInsetsHolder current(GapComposer gapComposer) {
        View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
        WindowInsetsHolder orCreateFor = getOrCreateFor(view);
        boolean changedInstance = gapComposer.changedInstance(orCreateFor) | gapComposer.changedInstance(view);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new BackHandlerKt$$ExternalSyntheticLambda2(21, orCreateFor, view);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Updater.DisposableEffect(orCreateFor, (Function1) rememberedValue, gapComposer);
        return orCreateFor;
    }

    public static WindowInsetsHolder getOrCreateFor(View view) {
        WindowInsetsHolder windowInsetsHolder;
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        synchronized (weakHashMap) {
            try {
                Object obj = weakHashMap.get(view);
                if (obj == null) {
                    obj = new WindowInsetsHolder(view);
                    weakHashMap.put(view, obj);
                }
                windowInsetsHolder = (WindowInsetsHolder) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return windowInsetsHolder;
    }

    public static final RowColumnParentData getRowColumnParentData(Measurable measurable) {
        Object parentData = measurable.getParentData();
        if (parentData instanceof RowColumnParentData) {
            return (RowColumnParentData) parentData;
        }
        return null;
    }

    public static final float getWeight(RowColumnParentData rowColumnParentData) {
        return rowColumnParentData != null ? rowColumnParentData.weight : RecyclerView.DECELERATION_RATE;
    }

    public static final Modifier height(Modifier modifier, IntrinsicSize intrinsicSize) {
        return modifier.then(new IntrinsicHeightElement(intrinsicSize));
    }

    public static final Modifier imePadding(Modifier modifier) {
        return modifier.then(new SystemInsetsPaddingModifierElement(imeLambda));
    }

    /* renamed from: isSatisfiedBy-NN6Ew-U, reason: not valid java name */
    public static final boolean m129isSatisfiedByNN6EwU(int i, int i2, long j) {
        int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
        if (i > Constraints.m681getMaxWidthimpl(j) || m683getMinWidthimpl > i) {
            return false;
        }
        return i2 <= Constraints.m680getMaxHeightimpl(j) && Constraints.m682getMinHeightimpl(j) <= i2;
    }

    public static final MeasureResult measure(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List list, Placeable[] placeableArr, int i6, int i7, int[] iArr, int i8) {
        int i9;
        float f;
        long j;
        int i10;
        int i11;
        int i12;
        List list2 = list;
        long j2 = i5;
        int i13 = i7 - i6;
        int[] iArr2 = new int[i13];
        int i14 = i6;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        float f2 = RecyclerView.DECELERATION_RATE;
        while (i14 < i7) {
            Measurable measurable = (Measurable) list2.get(i14);
            float weight = getWeight(getRowColumnParentData(measurable));
            if (weight > RecyclerView.DECELERATION_RATE) {
                f2 += weight;
                i16++;
                j = j2;
                i10 = i14;
            } else {
                int i19 = i3 - i17;
                Placeable placeable = placeableArr[i14];
                j = j2;
                if (placeable == null) {
                    if (i3 == Integer.MAX_VALUE) {
                        i10 = i14;
                        i11 = i16;
                        i12 = Integer.MAX_VALUE;
                    } else {
                        i10 = i14;
                        i11 = i16;
                        i12 = i19 < 0 ? 0 : i19;
                    }
                    placeable = measurable.mo512measureBRTryo0(rowColumnMeasurePolicy.mo115createConstraintsxF2OJ5Q(0, i12, i4, false));
                } else {
                    i10 = i14;
                    i11 = i16;
                }
                Placeable placeable2 = placeable;
                int mainAxisSize = rowColumnMeasurePolicy.mainAxisSize(placeable2);
                int crossAxisSize = rowColumnMeasurePolicy.crossAxisSize(placeable2);
                iArr2[i10 - i6] = mainAxisSize;
                int i20 = i19 - mainAxisSize;
                if (i20 < 0) {
                    i20 = 0;
                }
                i18 = Math.min(i5, i20);
                i17 += mainAxisSize + i18;
                i15 = Math.max(i15, crossAxisSize);
                placeableArr[i10] = placeable2;
                i16 = i11;
            }
            i14 = i10 + 1;
            j2 = j;
        }
        long j3 = j2;
        if (i16 == 0) {
            i17 -= i18;
            i9 = 0;
        } else {
            long j4 = (r22 - 1) * j3;
            long j5 = ((i3 != Integer.MAX_VALUE ? i3 : i) - i17) - j4;
            if (j5 < 0) {
                j5 = 0;
            }
            float f3 = j5 / f2;
            for (int i21 = i6; i21 < i7; i21++) {
                j5 -= Math.round(getWeight(getRowColumnParentData((Measurable) list2.get(i21))) * f3);
            }
            int i22 = i6;
            int i23 = i15;
            int i24 = 0;
            while (i22 < i7) {
                if (placeableArr[i22] == null) {
                    Measurable measurable2 = (Measurable) list2.get(i22);
                    f = f3;
                    RowColumnParentData rowColumnParentData = getRowColumnParentData(measurable2);
                    float weight2 = getWeight(rowColumnParentData);
                    if (weight2 <= RecyclerView.DECELERATION_RATE) {
                        InlineClassHelperKt.throwIllegalStateException("All weights <= 0 should have placeables");
                    }
                    int signum = Long.signum(j5);
                    long j6 = j5 - signum;
                    int max = Math.max(0, Math.round(weight2 * f) + signum);
                    Placeable mo512measureBRTryo0 = measurable2.mo512measureBRTryo0(rowColumnMeasurePolicy.mo115createConstraintsxF2OJ5Q((!(rowColumnParentData != null ? rowColumnParentData.fill : true) || max == Integer.MAX_VALUE) ? 0 : max, max, i4, true));
                    int mainAxisSize2 = rowColumnMeasurePolicy.mainAxisSize(mo512measureBRTryo0);
                    int crossAxisSize2 = rowColumnMeasurePolicy.crossAxisSize(mo512measureBRTryo0);
                    iArr2[i22 - i6] = mainAxisSize2;
                    i24 += mainAxisSize2;
                    int max2 = Math.max(i23, crossAxisSize2);
                    placeableArr[i22] = mo512measureBRTryo0;
                    i23 = max2;
                    j5 = j6;
                } else {
                    f = f3;
                }
                i22++;
                list2 = list;
                f3 = f;
            }
            i9 = (int) (i24 + j4);
            int i25 = i3 - i17;
            if (i9 < 0) {
                i9 = 0;
            }
            if (i9 > i25) {
                i9 = i25;
            }
            i15 = i23;
        }
        int i26 = i9 + i17;
        if (i26 < 0) {
            i26 = 0;
        }
        int max3 = Math.max(i26, i);
        int max4 = Math.max(i15, Math.max(i2, 0));
        int[] iArr3 = new int[i13];
        rowColumnMeasurePolicy.populateMainAxisPositions(max3, iArr2, iArr3, measureScope);
        return rowColumnMeasurePolicy.placeHelper(placeableArr, measureScope, iArr3, max3, max4, iArr, i8, i6, i7);
    }

    public static final Modifier navigationBarsPadding(Modifier modifier) {
        return modifier.then(new SystemInsetsPaddingModifierElement(navigationBarsLambda));
    }

    public static final Modifier offset(Modifier modifier, Function1 function1) {
        return modifier.then(new OffsetPxElement(function1));
    }

    /* renamed from: offset-VpY3zN4, reason: not valid java name */
    public static final Modifier m130offsetVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new OffsetElement(f, f2));
    }

    /* renamed from: offset-VpY3zN4$default, reason: not valid java name */
    public static Modifier m131offsetVpY3zN4$default(Modifier modifier, float f, int i) {
        float f2 = (i & 1) != 0 ? 0.0f : 12.0f;
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return m130offsetVpY3zN4(modifier, f2, f);
    }

    public static final Modifier onConsumedWindowInsetsChanged(Modifier modifier, Function1 function1) {
        return modifier.then(new ConsumedInsetsModifierElement(function1));
    }

    public static final Modifier padding(Modifier modifier, PaddingValues paddingValues) {
        return modifier.then(new PaddingValuesElement(paddingValues));
    }

    /* renamed from: padding-3ABfNKs, reason: not valid java name */
    public static final Modifier m132padding3ABfNKs(Modifier modifier, float f) {
        return modifier.then(new PaddingElement(f, f, f, f));
    }

    /* renamed from: padding-VpY3zN4, reason: not valid java name */
    public static final Modifier m133paddingVpY3zN4(Modifier modifier, float f, float f2) {
        return modifier.then(new PaddingElement(f, f2, f, f2));
    }

    /* renamed from: padding-VpY3zN4$default, reason: not valid java name */
    public static Modifier m134paddingVpY3zN4$default(Modifier modifier, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return m133paddingVpY3zN4(modifier, f, f2);
    }

    /* renamed from: padding-qDBjuR0, reason: not valid java name */
    public static final Modifier m135paddingqDBjuR0(Modifier modifier, float f, float f2, float f3, float f4) {
        return modifier.then(new PaddingElement(f, f2, f3, f4));
    }

    /* renamed from: padding-qDBjuR0$default, reason: not valid java name */
    public static Modifier m136paddingqDBjuR0$default(Modifier modifier, float f, float f2, float f3, float f4, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return m135paddingqDBjuR0(modifier, f, f2, f3, f4);
    }

    public static void placeCenter$foundation_layout(int i, int[] iArr, int[] iArr2, boolean z) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        float f = (i - i3) / 2.0f;
        if (!z) {
            int length = iArr.length;
            int i5 = 0;
            while (i2 < length) {
                int i6 = iArr[i2];
                iArr2[i5] = Math.round(f);
                f += i6;
                i2++;
                i5++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i7 = iArr[length2];
            iArr2[length2] = Math.round(f);
            f += i7;
        }
    }

    public static void placeSpaceBetween$foundation_layout(int i, int[] iArr, int[] iArr2, boolean z) {
        if (iArr.length == 0) {
            return;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        float max = (i - i3) / Math.max(iArr.length - 1, 1);
        float f = (z && iArr.length == 1) ? max : RecyclerView.DECELERATION_RATE;
        if (z) {
            for (int length = iArr.length - 1; -1 < length; length--) {
                int i5 = iArr[length];
                iArr2[length] = Math.round(f);
                f += i5 + max;
            }
            return;
        }
        int length2 = iArr.length;
        int i6 = 0;
        while (i2 < length2) {
            int i7 = iArr[i2];
            iArr2[i6] = Math.round(f);
            f += i7 + max;
            i2++;
            i6++;
        }
    }

    public static final Modifier safeDrawingPadding(Modifier modifier) {
        return modifier.then(new SystemInsetsPaddingModifierElement(safeDrawingLambda));
    }

    public static final Modifier statusBarsPadding(Modifier modifier) {
        return modifier.then(new SystemInsetsPaddingModifierElement(statusBarsLambda));
    }

    /* renamed from: toBoxConstraints-OenEA2s, reason: not valid java name */
    public static final long m137toBoxConstraintsOenEA2s(long j, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? ConstraintsKt.Constraints(Constraints.m683getMinWidthimpl(j), Constraints.m681getMaxWidthimpl(j), Constraints.m682getMinHeightimpl(j), Constraints.m680getMaxHeightimpl(j)) : ConstraintsKt.Constraints(Constraints.m682getMinHeightimpl(j), Constraints.m680getMaxHeightimpl(j), Constraints.m683getMinWidthimpl(j), Constraints.m681getMaxWidthimpl(j));
    }

    public static final InsetsValues toInsetsValues(Insets insets) {
        return new InsetsValues(insets.left, insets.top, insets.right, insets.bottom);
    }

    public static ValueInsets valueInsetsIgnoringVisibility(int i, String str) {
        return new ValueInsets(new InsetsValues(0, 0, 0, 0), str);
    }

    public static final void valueToString_impl$lambda$0$appendPlus(StringBuilder sb, String str) {
        if (sb.length() > 0) {
            sb.append('+');
        }
        sb.append(str);
    }

    public static final Modifier width(Modifier modifier, IntrinsicSize intrinsicSize) {
        return modifier.then(new IntrinsicWidthElement(intrinsicSize));
    }

    public static final Modifier windowInsetsPadding(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new InsetsPaddingModifierElement(windowInsets));
    }

    public abstract int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection);

    public static final void FlowRow(Modifier modifier, final Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, BiasAlignment.Vertical vertical, int i, int i2, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i3, final int i4) {
        int i5;
        final Modifier modifier2;
        final Arrangement$Vertical arrangement$Vertical2;
        final int i6;
        final int i7;
        gapComposer.startRestartGroup(-1303174015);
        int i8 = i4 & 1;
        if (i8 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposer.changed(modifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i9 = i4 & 4;
        if (i9 != 0) {
            i5 |= 384;
        } else if ((i3 & 384) == 0) {
            i5 |= gapComposer.changed(arrangement$Vertical) ? 256 : 128;
        }
        int i10 = i5 | 3072;
        int i11 = i4 & 16;
        if (i11 != 0) {
            i10 = i5 | 27648;
        } else if ((i3 & 24576) == 0) {
            i10 |= gapComposer.changed(i) ? 16384 : 8192;
        }
        int i12 = 196608 | i10;
        if (gapComposer.shouldExecute(i12 & 1, (599187 & i12) != 599186)) {
            if (i8 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            Modifier modifier3 = modifier;
            if (i9 != 0) {
                arrangement$Vertical = Top;
            }
            Arrangement$Vertical arrangement$Vertical3 = arrangement$Vertical;
            vertical = Alignment.Companion.Top;
            int i13 = i11 != 0 ? Integer.MAX_VALUE : i;
            FlowRow(modifier3, arrangement$Horizontal, arrangement$Vertical3, i13, FlowRowOverflow.Clip, composableLambdaImpl, gapComposer, (i12 & 14) | 1572912 | (i12 & 896) | 3072 | (57344 & i12) | 12779520);
            i7 = Integer.MAX_VALUE;
            modifier2 = modifier3;
            i6 = i13;
            arrangement$Vertical2 = arrangement$Vertical3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            arrangement$Vertical2 = arrangement$Vertical;
            i6 = i;
            i7 = i2;
        }
        final BiasAlignment.Vertical vertical2 = vertical;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    OffsetKt.FlowRow(Modifier.this, arrangement$Horizontal, arrangement$Vertical2, vertical2, i6, i7, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(i3 | 1), i4);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
