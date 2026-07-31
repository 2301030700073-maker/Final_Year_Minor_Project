package org.wikipedia.databinding;

import androidx.collection.internal.Lock;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ItemNotificationBinding {
    public Object notificationOverflowMenu;
    public Object notificationWikiCode;
    public Object notificationWikiCodeContainer;
    public Object notificationWikiCodeImage;
    public Object rootView = new RoundedCornerTreatment();
    public Object notificationDescription = new RoundedCornerTreatment();
    public Object notificationSource = new RoundedCornerTreatment();
    public Object notificationSubtitle = new RoundedCornerTreatment();
    public Object notificationTime = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
    public Object notificationTitle = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
    public Object notificationItemImage = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);
    public Object notificationItemSelectedImage = new AbsoluteCornerSize(RecyclerView.DECELERATION_RATE);

    public ItemNotificationBinding() {
        int i = 1;
        this.notificationOverflowMenu = new Lock(i);
        this.notificationWikiCodeImage = new Lock(i);
        this.notificationWikiCode = new Lock(i);
        this.notificationWikiCodeContainer = new Lock(i);
    }

    public ShapeAppearanceModel build() {
        ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
        shapeAppearanceModel.topLeftCorner = (ContextsKt) this.rootView;
        shapeAppearanceModel.topRightCorner = (ContextsKt) this.notificationDescription;
        shapeAppearanceModel.bottomRightCorner = (ContextsKt) this.notificationSource;
        shapeAppearanceModel.bottomLeftCorner = (ContextsKt) this.notificationSubtitle;
        shapeAppearanceModel.topLeftCornerSize = (CornerSize) this.notificationTime;
        shapeAppearanceModel.topRightCornerSize = (CornerSize) this.notificationTitle;
        shapeAppearanceModel.bottomRightCornerSize = (CornerSize) this.notificationItemImage;
        shapeAppearanceModel.bottomLeftCornerSize = (CornerSize) this.notificationItemSelectedImage;
        shapeAppearanceModel.topEdge = (Lock) this.notificationOverflowMenu;
        shapeAppearanceModel.rightEdge = (Lock) this.notificationWikiCodeImage;
        shapeAppearanceModel.bottomEdge = (Lock) this.notificationWikiCode;
        shapeAppearanceModel.leftEdge = (Lock) this.notificationWikiCodeContainer;
        return shapeAppearanceModel;
    }

    public void setAllCornerSizes(float f) {
        this.notificationTime = new AbsoluteCornerSize(f);
        this.notificationTitle = new AbsoluteCornerSize(f);
        this.notificationItemImage = new AbsoluteCornerSize(f);
        this.notificationItemSelectedImage = new AbsoluteCornerSize(f);
    }
}
