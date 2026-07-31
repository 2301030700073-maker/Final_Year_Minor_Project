package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import android.view.ContextThemeWrapper;
import com.fsck.k9.R;
import com.google.android.material.R$styleable;
import j$.util.Objects;
import java.io.IOException;
import kotlinx.coroutines.flow.SharingConfig;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StateListShapeAppearanceModel implements ShapeAppearance {
    public final ShapeAppearanceModel defaultShape;
    public final ShapeAppearanceModel[] shapeAppearanceModels;
    public final int stateCount;
    public final int[][] stateSpecs;

    public StateListShapeAppearanceModel(SharingConfig sharingConfig) {
        this.stateCount = sharingConfig.extraBufferCapacity;
        this.defaultShape = (ShapeAppearanceModel) sharingConfig.upstream;
        this.stateSpecs = (int[][]) sharingConfig.onBufferOverflow;
        this.shapeAppearanceModels = (ShapeAppearanceModel[]) sharingConfig.context;
    }

    public static void access$000(SharingConfig sharingConfig, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlResourceParser.getName().equals("item")) {
                Resources resources = context.getResources();
                int[] iArr = R$styleable.MaterialShape;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                int resourceId = obtainAttributes.getResourceId(0, 0);
                int resourceId2 = obtainAttributes.getResourceId(1, 0);
                AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(0.0f);
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, resourceId);
                if (resourceId2 != 0) {
                    contextThemeWrapper.getTheme().applyStyle(resourceId2, true);
                }
                ShapeAppearanceModel build = ShapeAppearanceModel.builder(contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance), absoluteCornerSize).build();
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != R.attr.shapeAppearance && attributeNameResource != R.attr.shapeAppearanceOverlay) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i] = attributeNameResource;
                        i = i3;
                    }
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr2, i);
                int i4 = sharingConfig.extraBufferCapacity;
                if (i4 == 0 || trimStateSet.length == 0) {
                    sharingConfig.upstream = build;
                }
                int[][] iArr3 = (int[][]) sharingConfig.onBufferOverflow;
                if (i4 >= iArr3.length) {
                    int i5 = i4 + 10;
                    int[][] iArr4 = new int[i5][];
                    System.arraycopy(iArr3, 0, iArr4, 0, i4);
                    sharingConfig.onBufferOverflow = iArr4;
                    ShapeAppearanceModel[] shapeAppearanceModelArr = new ShapeAppearanceModel[i5];
                    System.arraycopy((ShapeAppearanceModel[]) sharingConfig.context, 0, shapeAppearanceModelArr, 0, i4);
                    sharingConfig.context = shapeAppearanceModelArr;
                }
                int[][] iArr5 = (int[][]) sharingConfig.onBufferOverflow;
                int i6 = sharingConfig.extraBufferCapacity;
                iArr5[i6] = trimStateSet;
                ((ShapeAppearanceModel[]) sharingConfig.context)[i6] = build;
                sharingConfig.extraBufferCapacity = i6 + 1;
            }
        }
    }

    public static StateListShapeAppearanceModel create(Context context, TypedArray typedArray, int i) {
        XmlResourceParser xml;
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        SharingConfig sharingConfig = new SharingConfig();
        sharingConfig.upstream = new ShapeAppearanceModel();
        sharingConfig.onBufferOverflow = new int[10][];
        sharingConfig.context = new ShapeAppearanceModel[10];
        try {
            xml = context.getResources().getXml(resourceId);
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            sharingConfig.upstream = new ShapeAppearanceModel();
            sharingConfig.onBufferOverflow = new int[10][];
            sharingConfig.context = new ShapeAppearanceModel[10];
        }
        try {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
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
                access$000(sharingConfig, context, xml, asAttributeSet, context.getTheme());
            }
            xml.close();
            if (sharingConfig.extraBufferCapacity == 0) {
                return null;
            }
            return new StateListShapeAppearanceModel(sharingConfig);
        } catch (Throwable th) {
            if (xml != null) {
                try {
                    xml.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getDefaultShape() {
        return this.defaultShape;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel[] getShapeAppearanceModels() {
        return this.shapeAppearanceModels;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getShapeForState(int[] iArr) {
        int i;
        int i2;
        int[][] iArr2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = -1;
            i2 = this.stateCount;
            iArr2 = this.stateSpecs;
            if (i4 >= i2) {
                i4 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i4], iArr)) {
                break;
            }
            i4++;
        }
        if (i4 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                if (StateSet.stateSetMatches(iArr2[i3], iArr3)) {
                    i = i3;
                    break;
                }
                i3++;
            }
            i4 = i;
        }
        return this.shapeAppearanceModels[i4];
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final boolean isStateful() {
        return this.stateCount > 1;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel withCornerSize(float f) {
        return this.defaultShape.withCornerSize(f);
    }
}
