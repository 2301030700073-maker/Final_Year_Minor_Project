package com.google.android.material.button;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.compose.ui.semantics.SemanticsSortKt$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.memory.MemoryCacheService;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.StateListCornerSize;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.TreeMap;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MaterialButtonGroup extends LinearLayout {
    public static final Object OVERFLOW_BUTTON_TAG = null;
    public StateListSizeChange buttonSizeChange;
    public Integer[] childOrder;
    public final SemanticsSortKt$$ExternalSyntheticLambda0 childOrderComparator;
    public boolean childShapesDirty;
    public StateListShapeAppearanceModel groupStateListShapeAppearance;
    public StateListCornerSize innerCornerSize;
    public final ArrayList originalChildShapeAppearanceModels;
    public int overflowMode;
    public final MemoryCacheService pressedStateTracker;
    public final ArrayList rowButtonFirstIndices;
    public int spacing;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }
    }

    public MaterialButtonGroup(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_Material3_MaterialButtonGroup), attributeSet, R.attr.materialButtonToggleGroupStyle);
        StateListCornerSize create;
        XmlResourceParser xml;
        int next;
        int next2;
        this.overflowMode = 0;
        this.originalChildShapeAppearanceModels = new ArrayList();
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this;
        this.pressedStateTracker = new MemoryCacheService(21, materialButtonToggleGroup);
        this.childOrderComparator = new SemanticsSortKt$$ExternalSyntheticLambda0(2, materialButtonToggleGroup);
        this.childShapesDirty = true;
        new HashMap();
        new HashMap();
        new ArrayList();
        new ArrayList();
        this.rowButtonFirstIndices = new ArrayList();
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialButtonGroup, R.attr.materialButtonToggleGroupStyle, R.style.Widget_Material3_MaterialButtonGroup, new int[0]);
        if (obtainStyledAttributes.hasValue(2)) {
            int resourceId = obtainStyledAttributes.getResourceId(2, 0);
            StateListSizeChange stateListSizeChange = null;
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    xml = context2.getResources().getXml(resourceId);
                    try {
                        StateListSizeChange stateListSizeChange2 = new StateListSizeChange();
                        stateListSizeChange2.stateSpecs = new int[10][];
                        stateListSizeChange2.sizeChanges = new MemoryCacheService[10];
                        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                        do {
                            next2 = xml.next();
                            if (next2 == 2) {
                                break;
                            }
                        } while (next2 != 1);
                        if (next2 != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml.getName().equals("selector")) {
                            stateListSizeChange2.loadSizeChangeFromItems(context2, xml, asAttributeSet, context2.getTheme());
                        }
                        xml.close();
                        stateListSizeChange = stateListSizeChange2;
                    } finally {
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
                }
            }
            this.buttonSizeChange = stateListSizeChange;
        }
        if (obtainStyledAttributes.hasValue(6)) {
            StateListShapeAppearanceModel create2 = StateListShapeAppearanceModel.create(context2, obtainStyledAttributes, 6);
            this.groupStateListShapeAppearance = create2;
            if (create2 == null) {
                this.groupStateListShapeAppearance = new HttpUrl.Builder(ShapeAppearanceModel.builder(context2, obtainStyledAttributes.getResourceId(6, 0), obtainStyledAttributes.getResourceId(7, 0)).build()).build();
            }
        }
        if (obtainStyledAttributes.hasValue(3)) {
            AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
            int resourceId2 = obtainStyledAttributes.getResourceId(3, 0);
            if (resourceId2 == 0) {
                create = StateListCornerSize.create(ShapeAppearanceModel.getCornerSize(obtainStyledAttributes, 3, absoluteCornerSize));
            } else if (context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    xml = context2.getResources().getXml(resourceId2);
                    try {
                        create = new StateListCornerSize();
                        AttributeSet asAttributeSet2 = Xml.asAttributeSet(xml);
                        do {
                            next = xml.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml.getName().equals("selector")) {
                            create.loadCornerSizesFromItems(context2, xml, asAttributeSet2, context2.getTheme());
                        }
                        xml.close();
                    } finally {
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused2) {
                    create = StateListCornerSize.create(absoluteCornerSize);
                }
            } else {
                create = StateListCornerSize.create(ShapeAppearanceModel.getCornerSize(obtainStyledAttributes, 3, absoluteCornerSize));
            }
            this.innerCornerSize = create;
        }
        this.spacing = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        setOverflowMode(obtainStyledAttributes.getInt(5, 0));
        getResources().getDimensionPixelOffset(R.dimen.m3_btn_group_overflow_item_icon_horizontal_padding);
        obtainStyledAttributes.recycle();
    }

    public static LinearLayout.LayoutParams buildLayoutParams(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LayoutParams(layoutParams.width, layoutParams.height);
    }

    public static LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new LayoutParams((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (isChildVisible$1(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (isChildVisible$1(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonGroup", "Child views must be of type MaterialButton.");
            return;
        }
        recoverAllChildrenLayoutParams();
        this.childShapesDirty = true;
        int indexOfChild = indexOfChild(null);
        if (indexOfChild < 0 || i != -1) {
            super.addView(view, i, layoutParams);
        } else {
            super.addView(view, indexOfChild, layoutParams);
        }
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        materialButton.setOnPressedChangeListenerInternal(this.pressedStateTracker);
        this.originalChildShapeAppearanceModels.add(materialButton.getShapeAppearance());
        materialButton.setEnabled(isEnabled());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void adjustChildMarginsAndUpdateLayout() {
        /*
            r10 = this;
            int r0 = r10.getFirstVisibleChildIndex()
            r1 = -1
            if (r0 != r1) goto L9
            goto L96
        L9:
            int r2 = r0 + 1
        Lb:
            int r3 = r10.getChildCount()
            r4 = 1
            r5 = 0
            if (r2 >= r3) goto L6e
            android.view.View r3 = r10.getChildAt(r2)
            int r6 = r2 + (-1)
            android.view.View r6 = r10.getChildAt(r6)
            boolean r7 = r3 instanceof com.google.android.material.button.MaterialButton
            if (r7 == 0) goto L47
            boolean r7 = r6 instanceof com.google.android.material.button.MaterialButton
            if (r7 == 0) goto L47
            r7 = r3
            com.google.android.material.button.MaterialButton r7 = (com.google.android.material.button.MaterialButton) r7
            com.google.android.material.button.MaterialButton r6 = (com.google.android.material.button.MaterialButton) r6
            int r8 = r10.spacing
            if (r8 > 0) goto L41
            int r8 = r7.getStrokeWidth()
            int r9 = r6.getStrokeWidth()
            int r8 = java.lang.Math.min(r8, r9)
            r7.setShouldDrawSurfaceColorStroke(r4)
            r6.setShouldDrawSurfaceColorStroke(r4)
            goto L48
        L41:
            r7.setShouldDrawSurfaceColorStroke(r5)
            r6.setShouldDrawSurfaceColorStroke(r5)
        L47:
            r8 = r5
        L48:
            android.widget.LinearLayout$LayoutParams r4 = buildLayoutParams(r3)
            int r6 = r10.getOrientation()
            if (r6 != 0) goto L5e
            r4.setMarginEnd(r5)
            int r6 = r10.spacing
            int r6 = r6 - r8
            r4.setMarginStart(r6)
            r4.topMargin = r5
            goto L68
        L5e:
            r4.bottomMargin = r5
            int r6 = r10.spacing
            int r6 = r6 - r8
            r4.topMargin = r6
            r4.setMarginStart(r5)
        L68:
            r3.setLayoutParams(r4)
            int r2 = r2 + 1
            goto Lb
        L6e:
            int r2 = r10.getChildCount()
            if (r2 == 0) goto L96
            if (r0 != r1) goto L77
            goto L96
        L77:
            android.view.View r0 = r10.getChildAt(r0)
            com.google.android.material.button.MaterialButton r0 = (com.google.android.material.button.MaterialButton) r0
            android.widget.LinearLayout$LayoutParams r0 = buildLayoutParams(r0)
            int r10 = r10.getOrientation()
            if (r10 != r4) goto L8c
            r0.topMargin = r5
            r0.bottomMargin = r5
            return
        L8c:
            r0.setMarginEnd(r5)
            r0.setMarginStart(r5)
            r0.leftMargin = r5
            r0.rightMargin = r5
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonGroup.adjustChildMarginsAndUpdateLayout():void");
    }

    public final void adjustChildSizeChange() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        if (firstVisibleChildIndex == -1 || this.buttonSizeChange == null) {
            return;
        }
        if (this.overflowMode != 2) {
            adjustChildSizeChangeInRange(firstVisibleChildIndex, lastVisibleChildIndex);
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.rowButtonFirstIndices;
            if (i >= arrayList.size()) {
                return;
            }
            adjustChildSizeChangeInRange(((Integer) arrayList.get(i)).intValue(), (i == arrayList.size() + (-1) ? getChildCount() : ((Integer) arrayList.get(i + 1)).intValue()) - 1);
            i++;
        }
    }

    public final void adjustChildSizeChangeInRange(int i, int i2) {
        float max;
        if (i == i2) {
            ((MaterialButton) getChildAt(i)).setWidthChangeDirection(MaterialButton.WidthChangeDirection.NONE);
            return;
        }
        int i3 = Integer.MAX_VALUE;
        int i4 = i;
        while (i4 <= i2) {
            if (isChildVisible$1(i4)) {
                ((MaterialButton) getChildAt(i4)).setWidthChangeDirection(i4 == i ? MaterialButton.WidthChangeDirection.END : i4 == i2 ? MaterialButton.WidthChangeDirection.START : MaterialButton.WidthChangeDirection.BOTH);
                if (isChildVisible$1(i4) && this.buttonSizeChange != null) {
                    MaterialButton materialButton = (MaterialButton) getChildAt(i4);
                    StateListSizeChange stateListSizeChange = this.buttonSizeChange;
                    int width = materialButton.getWidth();
                    int i5 = -width;
                    for (int i6 = 0; i6 < stateListSizeChange.stateCount; i6++) {
                        StateListSizeChange.SizeChangeAmount sizeChangeAmount = (StateListSizeChange.SizeChangeAmount) stateListSizeChange.sizeChanges[i6].imageLoader;
                        StateListSizeChange.SizeChangeType sizeChangeType = (StateListSizeChange.SizeChangeType) sizeChangeAmount.type;
                        float f = sizeChangeAmount.amount;
                        if (sizeChangeType == StateListSizeChange.SizeChangeType.PIXELS) {
                            max = Math.max(i5, f);
                        } else if (sizeChangeType == StateListSizeChange.SizeChangeType.PERCENT) {
                            max = Math.max(i5, width * f);
                        }
                        i5 = (int) max;
                    }
                    int max2 = Math.max(0, i5);
                    MaterialButton prevVisibleChildButton = getPrevVisibleChildButton(i4);
                    int allowedWidthDecrease = prevVisibleChildButton == null ? 0 : prevVisibleChildButton.getAllowedWidthDecrease();
                    MaterialButton nextVisibleChildButton = getNextVisibleChildButton(i4);
                    r3 = Math.min(max2, allowedWidthDecrease + (nextVisibleChildButton != null ? nextVisibleChildButton.getAllowedWidthDecrease() : 0));
                }
                if (i4 != i && i4 != i2) {
                    r3 /= 2;
                }
                i3 = Math.min(i3, r3);
            }
            i4++;
        }
        while (i <= i2) {
            if (isChildVisible$1(i)) {
                MaterialButton materialButton2 = (MaterialButton) getChildAt(i);
                materialButton2.setSizeChange(this.buttonSizeChange);
                materialButton2.setWidthChangeMax(i3 * 2);
            }
            i++;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.childOrderComparator);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put((MaterialButton) getChildAt(i), Integer.valueOf(i));
        }
        this.childOrder = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public StateListSizeChange getButtonSizeChange() {
        return this.buttonSizeChange;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.childOrder;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w("MButtonGroup", "Child order wasn't updated");
        return i2;
    }

    public CornerSize getInnerCornerSize() {
        return this.innerCornerSize.defaultCornerSize;
    }

    public StateListCornerSize getInnerCornerSizeStateList() {
        return this.innerCornerSize;
    }

    public final MaterialButton getNextVisibleChildButton(int i) {
        int childCount = getChildCount();
        int i2 = i + 1;
        while (true) {
            if (i2 >= childCount) {
                i2 = -1;
                break;
            }
            if (isChildVisible$1(i2)) {
                break;
            }
            i2++;
        }
        ArrayList arrayList = this.rowButtonFirstIndices;
        if (!arrayList.isEmpty()) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                int intValue = ((Integer) arrayList.get(i3)).intValue();
                int intValue2 = i3 == arrayList.size() + (-1) ? childCount - 1 : ((Integer) arrayList.get(i3 + 1)).intValue() - 1;
                if (i >= intValue && i <= intValue2 && (i2 < intValue || i2 > intValue2)) {
                    return null;
                }
                i3++;
            }
        }
        if (i2 == -1) {
            return null;
        }
        return (MaterialButton) getChildAt(i2);
    }

    public Drawable getOverflowButtonIcon() {
        throw null;
    }

    public int getOverflowMode() {
        return this.overflowMode;
    }

    public final MaterialButton getPrevVisibleChildButton(int i) {
        int childCount = getChildCount();
        int i2 = i - 1;
        while (true) {
            if (i2 < 0) {
                i2 = -1;
                break;
            }
            if (isChildVisible$1(i2)) {
                break;
            }
            i2--;
        }
        ArrayList arrayList = this.rowButtonFirstIndices;
        if (!arrayList.isEmpty()) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                int intValue = ((Integer) arrayList.get(i3)).intValue();
                int intValue2 = i3 == arrayList.size() + (-1) ? childCount : ((Integer) arrayList.get(i3 + 1)).intValue();
                if (i >= intValue && i < intValue2 && (i2 < intValue || i2 >= intValue2)) {
                    return null;
                }
                i3++;
            }
        }
        if (i2 == -1) {
            return null;
        }
        return (MaterialButton) getChildAt(i2);
    }

    public ShapeAppearanceModel getShapeAppearance() {
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.groupStateListShapeAppearance;
        if (stateListShapeAppearanceModel == null) {
            return null;
        }
        return stateListShapeAppearanceModel.getDefaultShape$1();
    }

    public int getSpacing() {
        return this.spacing;
    }

    public StateListShapeAppearanceModel getStateListShapeAppearance() {
        return this.groupStateListShapeAppearance;
    }

    public final boolean isChildVisible$1(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            recoverAllChildrenLayoutParams();
            adjustChildSizeChange();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        adjustChildMarginsAndUpdateLayout();
        if (this.overflowMode != 2) {
            i3 = 0;
        } else {
            if (getOrientation() == 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("The wrap overflow mode is not compatible to the vertical orientation.");
                return;
            }
            if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("The wrap overflow mode is not compatible with wrap_content layout width.");
                return;
            }
            ArrayList arrayList = this.rowButtonFirstIndices;
            arrayList.clear();
            int size = View.MeasureSpec.getSize(i);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                if (isChildVisible$1(i7)) {
                    View view = (MaterialButton) getChildAt(i7);
                    measureChild(view, i, i2);
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    if (measuredWidth > 0) {
                        LinearLayout.LayoutParams buildLayoutParams = buildLayoutParams(view);
                        if (i4 + measuredWidth + (arrayList2.isEmpty() ? 0 : this.spacing) > size || arrayList2.isEmpty()) {
                            if (!arrayList2.isEmpty()) {
                                arrayList3.add(Integer.valueOf(i4));
                            }
                            i6 += i5 + (arrayList.isEmpty() ? 0 : this.spacing);
                            arrayList.add(Integer.valueOf(i7));
                            buildLayoutParams.setMarginStart(-i4);
                            arrayList2.clear();
                            i4 = 0;
                            i5 = 0;
                        }
                        i4 += measuredWidth + (i4 == 0 ? 0 : this.spacing);
                        i5 = Math.max(i5, measuredHeight);
                        arrayList2.add(Integer.valueOf(i7));
                        buildLayoutParams.topMargin += i6;
                        view.setLayoutParams(buildLayoutParams);
                    }
                }
            }
            arrayList3.add(Integer.valueOf(i4));
            int intValue = ((Integer) Collections.max(arrayList3)).intValue();
            int i8 = 0;
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                int intValue2 = ((Integer) arrayList.get(i9)).intValue();
                int intValue3 = ((Integer) arrayList3.get(i9)).intValue();
                MaterialButton materialButton = (MaterialButton) getChildAt(intValue2);
                LinearLayout.LayoutParams buildLayoutParams2 = buildLayoutParams(materialButton);
                int i10 = buildLayoutParams2.gravity & 8388615;
                int absoluteGravity = Gravity.getAbsoluteGravity(i10, getLayoutDirection());
                int i11 = intValue - intValue3;
                if (i10 != 8388611) {
                    if (absoluteGravity == 1) {
                        i11 /= 2;
                    }
                    buildLayoutParams2.setMarginStart((buildLayoutParams2.getMarginStart() + i11) - i8);
                    materialButton.setLayoutParams(buildLayoutParams2);
                    i8 = i11;
                }
            }
            i3 = getPaddingBottom() + getPaddingTop() + i6 + i5;
        }
        updateChildShapes();
        super.onMeasure(i, i2);
        if (this.overflowMode != 2 || i3 == getMeasuredHeight()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), i3);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.originalChildShapeAppearanceModels.remove(indexOfChild);
        }
        this.childShapesDirty = true;
        updateChildShapes();
        recoverAllChildrenLayoutParams();
        adjustChildMarginsAndUpdateLayout();
    }

    public final void recoverAllChildrenLayoutParams() {
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i);
            LinearLayout.LayoutParams layoutParams = materialButton.originalLayoutParams;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.originalLayoutParams = null;
                materialButton.originalWidth = -2.1474836E9f;
            }
        }
    }

    public void setButtonSizeChange(StateListSizeChange stateListSizeChange) {
        if (this.buttonSizeChange != stateListSizeChange) {
            this.buttonSizeChange = stateListSizeChange;
            adjustChildSizeChange();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setEnabled(z);
        }
    }

    public void setInnerCornerSize(CornerSize cornerSize) {
        this.innerCornerSize = StateListCornerSize.create(cornerSize);
        this.childShapesDirty = true;
        updateChildShapes();
        invalidate();
    }

    public void setInnerCornerSizeStateList(StateListCornerSize stateListCornerSize) {
        this.innerCornerSize = stateListCornerSize;
        this.childShapesDirty = true;
        updateChildShapes();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (getOrientation() != i) {
            this.childShapesDirty = true;
        }
        super.setOrientation(i);
    }

    public void setOverflowButtonIcon(Drawable drawable) {
        throw null;
    }

    public void setOverflowButtonIconResource(int i) {
        throw null;
    }

    public void setOverflowMode(int i) {
        if (this.overflowMode != i) {
            this.overflowMode = i;
            requestLayout();
            invalidate();
        }
    }

    public void setShapeAppearance(ShapeAppearanceModel shapeAppearanceModel) {
        this.groupStateListShapeAppearance = new HttpUrl.Builder(shapeAppearanceModel).build();
        this.childShapesDirty = true;
        updateChildShapes();
        invalidate();
    }

    public void setSpacing(int i) {
        this.spacing = i;
        invalidate();
        requestLayout();
    }

    public void setStateListShapeAppearance(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        this.groupStateListShapeAppearance = stateListShapeAppearanceModel;
        this.childShapesDirty = true;
        updateChildShapes();
        invalidate();
    }

    public final void updateChildShapes() {
        int i;
        if (!(this.innerCornerSize == null && this.groupStateListShapeAppearance == null) && this.childShapesDirty) {
            this.childShapesDirty = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i2 = 0;
            while (i2 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i2);
                if (materialButton.getVisibility() != 8) {
                    boolean z = i2 == firstVisibleChildIndex;
                    boolean z2 = i2 == lastVisibleChildIndex;
                    Object obj = this.groupStateListShapeAppearance;
                    ArrayList arrayList = this.originalChildShapeAppearanceModels;
                    if (obj == null || (!z && !z2)) {
                        obj = (ShapeAppearance) arrayList.get(i2);
                    }
                    HttpUrl.Builder builder = !(obj instanceof StateListShapeAppearanceModel) ? new HttpUrl.Builder((ShapeAppearanceModel) arrayList.get(i2)) : ((StateListShapeAppearanceModel) obj).toBuilder();
                    boolean z3 = getOrientation() == 0;
                    boolean z4 = getLayoutDirection() == 1;
                    if (z3) {
                        i = z ? 5 : 0;
                        if (z2) {
                            i |= 10;
                        }
                        if (z4) {
                            i = ((i & 5) << 1) | ((i & 10) >> 1);
                        }
                    } else {
                        i = z ? 3 : 0;
                        if (z2) {
                            i |= 12;
                        }
                    }
                    int i3 = ~i;
                    StateListCornerSize stateListCornerSize = this.innerCornerSize;
                    if ((i3 | 1) == i3) {
                        builder.host = stateListCornerSize;
                    }
                    if ((i3 | 2) == i3) {
                        builder.encodedFragment = stateListCornerSize;
                    }
                    if ((i3 | 4) == i3) {
                        builder.encodedPathSegments = stateListCornerSize;
                    }
                    if ((i3 | 8) == i3) {
                        builder.encodedQueryNamesAndValues = stateListCornerSize;
                    }
                    StateListShapeAppearanceModel build = builder.build();
                    boolean isStateful = build.isStateful();
                    ShapeAppearanceModel shapeAppearanceModel = build;
                    if (!isStateful) {
                        shapeAppearanceModel = build.getDefaultShape$1();
                    }
                    materialButton.setShapeAppearance(shapeAppearanceModel);
                }
                i2++;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateLayoutParams(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateLayoutParams(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialButtonGroup_Layout);
        obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.getText(1);
        obtainStyledAttributes.recycle();
        return layoutParams;
    }
}
