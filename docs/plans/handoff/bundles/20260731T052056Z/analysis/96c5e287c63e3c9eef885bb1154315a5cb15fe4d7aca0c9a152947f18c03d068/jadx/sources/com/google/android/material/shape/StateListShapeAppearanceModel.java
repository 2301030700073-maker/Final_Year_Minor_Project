package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import com.google.android.material.R$styleable;
import j$.util.Objects;
import java.io.IOException;
import okhttp3.HttpUrl;
import org.wikipedia.R;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StateListShapeAppearanceModel implements ShapeAppearance {
    public final StateListCornerSize bottomLeftCornerSizeOverride;
    public final StateListCornerSize bottomRightCornerSizeOverride;
    public final ShapeAppearanceModel defaultShape;
    public final ShapeAppearanceModel[] shapeAppearanceModels;
    public final int stateCount;
    public final int[][] stateSpecs;
    public final StateListCornerSize topLeftCornerSizeOverride;
    public final StateListCornerSize topRightCornerSizeOverride;

    public StateListShapeAppearanceModel(HttpUrl.Builder builder) {
        this.stateCount = builder.port;
        this.defaultShape = (ShapeAppearanceModel) builder.scheme;
        this.stateSpecs = (int[][]) builder.encodedUsername;
        this.shapeAppearanceModels = (ShapeAppearanceModel[]) builder.encodedPassword;
        this.topLeftCornerSizeOverride = (StateListCornerSize) builder.host;
        this.topRightCornerSizeOverride = (StateListCornerSize) builder.encodedFragment;
        this.bottomLeftCornerSizeOverride = (StateListCornerSize) builder.encodedPathSegments;
        this.bottomRightCornerSizeOverride = (StateListCornerSize) builder.encodedQueryNamesAndValues;
    }

    public static StateListShapeAppearanceModel create(Context context, TypedArray typedArray, int i) {
        XmlResourceParser xml;
        AttributeSet asAttributeSet;
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        HttpUrl.Builder builder = new HttpUrl.Builder(1);
        builder.initialize();
        try {
            xml = context.getResources().getXml(resourceId);
            try {
                asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
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
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            builder.initialize();
        }
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xml.getName().equals("selector")) {
            loadShapeAppearanceModelsFromItems(builder, context, xml, asAttributeSet, context.getTheme());
        }
        xml.close();
        return builder.build();
    }

    public static void loadShapeAppearanceModelsFromItems(HttpUrl.Builder builder, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                ShapeAppearanceModel build = ShapeAppearanceModel.builder(context, obtainAttributes.getResourceId(0, 0), obtainAttributes.getResourceId(1, 0)).build();
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
                builder.addStateShapeAppearanceModel(StateSet.trimStateSet(iArr2, i), build);
            }
        }
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getDefaultShape() {
        return getDefaultShape$1();
    }

    public final ShapeAppearanceModel getDefaultShape$1() {
        ShapeAppearanceModel shapeAppearanceModel = this.defaultShape;
        StateListCornerSize stateListCornerSize = this.bottomRightCornerSizeOverride;
        StateListCornerSize stateListCornerSize2 = this.bottomLeftCornerSizeOverride;
        StateListCornerSize stateListCornerSize3 = this.topRightCornerSizeOverride;
        StateListCornerSize stateListCornerSize4 = this.topLeftCornerSizeOverride;
        if (stateListCornerSize4 == null && stateListCornerSize3 == null && stateListCornerSize2 == null && stateListCornerSize == null) {
            return shapeAppearanceModel;
        }
        ItemNotificationBinding builder = shapeAppearanceModel.toBuilder();
        if (stateListCornerSize4 != null) {
            builder.notificationTime = stateListCornerSize4.defaultCornerSize;
        }
        if (stateListCornerSize3 != null) {
            builder.notificationTitle = stateListCornerSize3.defaultCornerSize;
        }
        if (stateListCornerSize2 != null) {
            builder.notificationItemSelectedImage = stateListCornerSize2.defaultCornerSize;
        }
        if (stateListCornerSize != null) {
            builder.notificationItemImage = stateListCornerSize.defaultCornerSize;
        }
        return builder.build();
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
        ShapeAppearanceModel[] shapeAppearanceModelArr = this.shapeAppearanceModels;
        StateListCornerSize stateListCornerSize = this.bottomRightCornerSizeOverride;
        StateListCornerSize stateListCornerSize2 = this.bottomLeftCornerSizeOverride;
        StateListCornerSize stateListCornerSize3 = this.topRightCornerSizeOverride;
        StateListCornerSize stateListCornerSize4 = this.topLeftCornerSizeOverride;
        if (stateListCornerSize4 == null && stateListCornerSize3 == null && stateListCornerSize2 == null && stateListCornerSize == null) {
            return shapeAppearanceModelArr[i4];
        }
        ItemNotificationBinding builder = shapeAppearanceModelArr[i4].toBuilder();
        if (stateListCornerSize4 != null) {
            builder.notificationTime = stateListCornerSize4.getCornerSizeForState(iArr);
        }
        if (stateListCornerSize3 != null) {
            builder.notificationTitle = stateListCornerSize3.getCornerSizeForState(iArr);
        }
        if (stateListCornerSize2 != null) {
            builder.notificationItemSelectedImage = stateListCornerSize2.getCornerSizeForState(iArr);
        }
        if (stateListCornerSize != null) {
            builder.notificationItemImage = stateListCornerSize.getCornerSizeForState(iArr);
        }
        return builder.build();
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final boolean isStateful() {
        StateListCornerSize stateListCornerSize;
        StateListCornerSize stateListCornerSize2;
        StateListCornerSize stateListCornerSize3;
        StateListCornerSize stateListCornerSize4;
        return this.stateCount > 1 || ((stateListCornerSize = this.topLeftCornerSizeOverride) != null && stateListCornerSize.stateCount > 1) || (((stateListCornerSize2 = this.topRightCornerSizeOverride) != null && stateListCornerSize2.stateCount > 1) || (((stateListCornerSize3 = this.bottomLeftCornerSizeOverride) != null && stateListCornerSize3.stateCount > 1) || ((stateListCornerSize4 = this.bottomRightCornerSizeOverride) != null && stateListCornerSize4.stateCount > 1)));
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [int[][], java.io.Serializable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.material.shape.ShapeAppearanceModel[], java.io.Serializable] */
    public final HttpUrl.Builder toBuilder() {
        HttpUrl.Builder builder = new HttpUrl.Builder(1);
        int i = this.stateCount;
        builder.port = i;
        builder.scheme = this.defaultShape;
        int[][] iArr = this.stateSpecs;
        ?? r3 = new int[iArr.length][];
        builder.encodedUsername = r3;
        ShapeAppearanceModel[] shapeAppearanceModelArr = this.shapeAppearanceModels;
        builder.encodedPassword = new ShapeAppearanceModel[shapeAppearanceModelArr.length];
        System.arraycopy(iArr, 0, r3, 0, i);
        System.arraycopy(shapeAppearanceModelArr, 0, (ShapeAppearanceModel[]) builder.encodedPassword, 0, builder.port);
        builder.host = this.topLeftCornerSizeOverride;
        builder.encodedFragment = this.topRightCornerSizeOverride;
        builder.encodedPathSegments = this.bottomLeftCornerSizeOverride;
        builder.encodedQueryNamesAndValues = this.bottomRightCornerSizeOverride;
        return builder;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel withCornerSize(float f) {
        return getDefaultShape$1().withCornerSize(f);
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel withCornerSize(RelativeCornerSize relativeCornerSize) {
        return getDefaultShape$1().withCornerSize(relativeCornerSize);
    }
}
