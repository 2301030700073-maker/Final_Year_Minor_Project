package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.collection.internal.Lock;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import com.google.android.material.R$styleable;
import kotlin.ResultKt;
import org.wikipedia.databinding.ItemNotificationBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeAppearanceModel implements ShapeAppearance {
    public static final RelativeCornerSize PILL = new RelativeCornerSize(0.5f);
    public Lock bottomEdge;
    public Lock leftEdge;
    public Lock rightEdge;
    public Lock topEdge;
    public ContextsKt topLeftCorner = new RoundedCornerTreatment();
    public ContextsKt topRightCorner = new RoundedCornerTreatment();
    public ContextsKt bottomRightCorner = new RoundedCornerTreatment();
    public ContextsKt bottomLeftCorner = new RoundedCornerTreatment();
    public CornerSize topLeftCornerSize = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
    public CornerSize topRightCornerSize = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
    public CornerSize bottomRightCornerSize = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
    public CornerSize bottomLeftCornerSize = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);

    public ShapeAppearanceModel() {
        int i = 1;
        this.topEdge = new Lock(i);
        this.rightEdge = new Lock(i);
        this.bottomEdge = new Lock(i);
        this.leftEdge = new Lock(i);
    }

    public static ItemNotificationBinding builder(TypedArray typedArray, CornerSize cornerSize) {
        try {
            int i = typedArray.getInt(0, 0);
            int i2 = typedArray.getInt(3, i);
            int i3 = typedArray.getInt(4, i);
            int i4 = typedArray.getInt(2, i);
            int i5 = typedArray.getInt(1, i);
            CornerSize cornerSize2 = getCornerSize(typedArray, 5, cornerSize);
            CornerSize cornerSize3 = getCornerSize(typedArray, 8, cornerSize2);
            CornerSize cornerSize4 = getCornerSize(typedArray, 9, cornerSize2);
            CornerSize cornerSize5 = getCornerSize(typedArray, 7, cornerSize2);
            CornerSize cornerSize6 = getCornerSize(typedArray, 6, cornerSize2);
            ItemNotificationBinding itemNotificationBinding = new ItemNotificationBinding();
            itemNotificationBinding.rootView = ResultKt.createCornerTreatment(i2);
            itemNotificationBinding.notificationTime = cornerSize3;
            itemNotificationBinding.notificationDescription = ResultKt.createCornerTreatment(i3);
            itemNotificationBinding.notificationTitle = cornerSize4;
            itemNotificationBinding.notificationSource = ResultKt.createCornerTreatment(i4);
            itemNotificationBinding.notificationItemImage = cornerSize5;
            itemNotificationBinding.notificationSubtitle = ResultKt.createCornerTreatment(i5);
            itemNotificationBinding.notificationItemSelectedImage = cornerSize6;
            return itemNotificationBinding;
        } finally {
            typedArray.recycle();
        }
    }

    public static CornerSize getCornerSize(TypedArray typedArray, int i, CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel[] getShapeAppearanceModels() {
        return new ShapeAppearanceModel[]{this};
    }

    public final boolean isRoundRect(RectF rectF) {
        boolean z = this.leftEdge.getClass().equals(Lock.class) && this.rightEdge.getClass().equals(Lock.class) && this.topEdge.getClass().equals(Lock.class) && this.bottomEdge.getClass().equals(Lock.class);
        float cornerSize = this.topLeftCornerSize.getCornerSize(rectF);
        return z && ((this.topRightCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.topRightCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.bottomLeftCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.bottomLeftCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.bottomRightCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.bottomRightCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && (this.topRightCorner instanceof RoundedCornerTreatment) && (this.topLeftCorner instanceof RoundedCornerTreatment) && (this.bottomRightCorner instanceof RoundedCornerTreatment) && (this.bottomLeftCorner instanceof RoundedCornerTreatment);
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final boolean isStateful() {
        return false;
    }

    public final ItemNotificationBinding toBuilder() {
        ItemNotificationBinding itemNotificationBinding = new ItemNotificationBinding();
        itemNotificationBinding.rootView = this.topLeftCorner;
        itemNotificationBinding.notificationDescription = this.topRightCorner;
        itemNotificationBinding.notificationSource = this.bottomRightCorner;
        itemNotificationBinding.notificationSubtitle = this.bottomLeftCorner;
        itemNotificationBinding.notificationTime = this.topLeftCornerSize;
        itemNotificationBinding.notificationTitle = this.topRightCornerSize;
        itemNotificationBinding.notificationItemImage = this.bottomRightCornerSize;
        itemNotificationBinding.notificationItemSelectedImage = this.bottomLeftCornerSize;
        itemNotificationBinding.notificationOverflowMenu = this.topEdge;
        itemNotificationBinding.notificationWikiCodeImage = this.rightEdge;
        itemNotificationBinding.notificationWikiCode = this.bottomEdge;
        itemNotificationBinding.notificationWikiCodeContainer = this.leftEdge;
        return itemNotificationBinding;
    }

    public final String toString() {
        return "[" + this.topLeftCornerSize + ", " + this.topRightCornerSize + ", " + this.bottomRightCornerSize + ", " + this.bottomLeftCornerSize + "]";
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel withCornerSize(RelativeCornerSize relativeCornerSize) {
        ItemNotificationBinding builder = toBuilder();
        builder.notificationTime = relativeCornerSize;
        builder.notificationTitle = relativeCornerSize;
        builder.notificationItemImage = relativeCornerSize;
        builder.notificationItemSelectedImage = relativeCornerSize;
        return builder.build();
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel withCornerSize(float f) {
        ItemNotificationBinding builder = toBuilder();
        builder.setAllCornerSizes(f);
        return builder.build();
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getDefaultShape() {
        return this;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public final ShapeAppearanceModel getShapeForState(int[] iArr) {
        return this;
    }

    public static ItemNotificationBinding builder(Context context, AttributeSet attributeSet, int i, int i2, CornerSize cornerSize) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, resourceId);
        if (resourceId2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(resourceId2, true);
        }
        return builder(contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance), cornerSize);
    }

    public static ItemNotificationBinding builder(Context context, int i, int i2) {
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i2, true);
        }
        return builder(contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance), absoluteCornerSize);
    }

    public static ItemNotificationBinding builder(Context context, AttributeSet attributeSet, int i, int i2) {
        return builder(context, attributeSet, i, i2, new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE));
    }
}
