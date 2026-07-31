package com.skydoves.balloon.overlay;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.skydoves.balloon.BalloonOverlayPadding;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.text.RegexKt;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bR/\u0010\u0013\u001a\u0004\u0018\u00010\u00012\b\u0010\f\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R;\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00142\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00148F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R+\u0010\u001f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00068G@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u001c\u0010\u000b\"\u0004\b\u001d\u0010\u001eR+\u0010#\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00068G@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b \u0010\u000e\u001a\u0004\b!\u0010\u000b\"\u0004\b\"\u0010\u001eR/\u0010*\u001a\u0004\u0018\u00010$2\b\u0010\f\u001a\u0004\u0018\u00010$8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b%\u0010\u000e\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R+\u00101\u001a\u00020+2\u0006\u0010\f\u001a\u00020+8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b,\u0010\u000e\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R/\u00108\u001a\u0004\u0018\u0001022\b\u0010\f\u001a\u0004\u0018\u0001028F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b3\u0010\u000e\u001a\u0004\b4\u00105\"\u0004\b6\u00107R+\u0010?\u001a\u0002092\u0006\u0010\f\u001a\u0002098F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b:\u0010\u000e\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006@"}, d2 = {"Lcom/skydoves/balloon/overlay/BalloonAnchorOverlayView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attr", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "getStatusBarHeight", "()I", "<set-?>", "anchorView$delegate", "Lokhttp3/FormBody$Builder;", "getAnchorView", "()Landroid/view/View;", "setAnchorView", "(Landroid/view/View;)V", "anchorView", "", "anchorViewList$delegate", "getAnchorViewList", "()Ljava/util/List;", "setAnchorViewList", "(Ljava/util/List;)V", "anchorViewList", "overlayColor$delegate", "getOverlayColor", "setOverlayColor", "(I)V", "overlayColor", "overlayPaddingColor$delegate", "getOverlayPaddingColor", "setOverlayPaddingColor", "overlayPaddingColor", "Landroid/graphics/Shader;", "overlayPaddingShader$delegate", "getOverlayPaddingShader", "()Landroid/graphics/Shader;", "setOverlayPaddingShader", "(Landroid/graphics/Shader;)V", "overlayPaddingShader", "Lcom/skydoves/balloon/BalloonOverlayPadding;", "overlayPadding$delegate", "getOverlayPadding", "()Lcom/skydoves/balloon/BalloonOverlayPadding;", "setOverlayPadding", "(Lcom/skydoves/balloon/BalloonOverlayPadding;)V", "overlayPadding", "Landroid/graphics/Point;", "overlayPosition$delegate", "getOverlayPosition", "()Landroid/graphics/Point;", "setOverlayPosition", "(Landroid/graphics/Point;)V", "overlayPosition", "Lcom/skydoves/balloon/overlay/BalloonOverlayShape;", "balloonOverlayShape$delegate", "getBalloonOverlayShape", "()Lcom/skydoves/balloon/overlay/BalloonOverlayShape;", "setBalloonOverlayShape", "(Lcom/skydoves/balloon/overlay/BalloonOverlayShape;)V", "balloonOverlayShape", "balloon_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BalloonAnchorOverlayView extends View {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;

    /* renamed from: anchorView$delegate, reason: from kotlin metadata */
    public final FormBody.Builder anchorView;

    /* renamed from: anchorViewList$delegate, reason: from kotlin metadata */
    public final FormBody.Builder anchorViewList;

    /* renamed from: balloonOverlayShape$delegate, reason: from kotlin metadata */
    public final FormBody.Builder balloonOverlayShape;
    public Bitmap bitmap;
    public boolean invalidated;

    /* renamed from: overlayColor$delegate, reason: from kotlin metadata */
    public final FormBody.Builder overlayColor;

    /* renamed from: overlayPadding$delegate, reason: from kotlin metadata */
    public final FormBody.Builder overlayPadding;

    /* renamed from: overlayPaddingColor$delegate, reason: from kotlin metadata */
    public final FormBody.Builder overlayPaddingColor;

    /* renamed from: overlayPaddingShader$delegate, reason: from kotlin metadata */
    public final FormBody.Builder overlayPaddingShader;

    /* renamed from: overlayPosition$delegate, reason: from kotlin metadata */
    public final FormBody.Builder overlayPosition;
    public final Paint paddingColorPaint;
    public final Paint paint;

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "anchorView", "getAnchorView()Landroid/view/View;", 0);
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.mutableProperty1(mutablePropertyReference1Impl), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "anchorViewList", "getAnchorViewList()Ljava/util/List;", 0)), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "overlayColor", "getOverlayColor()I", 0)), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "overlayPaddingColor", "getOverlayPaddingColor()I", 0)), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "overlayPaddingShader", "getOverlayPaddingShader()Landroid/graphics/Shader;", 0)), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "overlayPadding", "getOverlayPadding()Lcom/skydoves/balloon/BalloonOverlayPadding;", 0)), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "overlayPosition", "getOverlayPosition()Landroid/graphics/Point;", 0)), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(BalloonAnchorOverlayView.class, "balloonOverlayShape", "getBalloonOverlayShape()Lcom/skydoves/balloon/overlay/BalloonOverlayShape;", 0))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalloonAnchorOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.anchorView = Operation$State.viewProperty(this, null);
        this.anchorViewList = Operation$State.viewProperty(this, null);
        this.overlayColor = Operation$State.viewProperty(this, 0);
        this.overlayPaddingColor = Operation$State.viewProperty(this, 0);
        this.overlayPaddingShader = Operation$State.viewProperty(this, null);
        this.overlayPadding = Operation$State.viewProperty(this, new BalloonOverlayPadding());
        this.overlayPosition = Operation$State.viewProperty(this, null);
        this.balloonOverlayShape = Operation$State.viewProperty(this, BalloonOverlayOval.INSTANCE);
        Paint paint = new Paint(1);
        this.paint = paint;
        Paint paint2 = new Paint(1);
        this.paddingColorPaint = paint2;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
        paint2.setDither(true);
    }

    private final int getStatusBarHeight() {
        Rect rect = new Rect();
        Context context = getContext();
        context.getClass();
        Activity findActivity = RegexKt.findActivity(context);
        if (findActivity == null) {
            return 0;
        }
        findActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    public final void addFocusViewInOverlay(View view, Canvas canvas) {
        RectF rectF;
        if (view != null) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            rect.offset((int) view.getTranslationX(), (int) view.getTranslationY());
            Point overlayPosition = getOverlayPosition();
            if (overlayPosition != null) {
                float f = overlayPosition.x;
                getOverlayPadding().getClass();
                float f2 = f - RecyclerView.DECELERATION_RATE;
                float f3 = overlayPosition.y;
                getOverlayPadding().getClass();
                float statusBarHeight = (f3 - RecyclerView.DECELERATION_RATE) + getStatusBarHeight();
                float width = view.getWidth() + overlayPosition.x;
                getOverlayPadding().getClass();
                float f4 = width + RecyclerView.DECELERATION_RATE;
                float height = view.getHeight() + overlayPosition.y;
                getOverlayPadding().getClass();
                rectF = new RectF(f2, statusBarHeight, f4, height + RecyclerView.DECELERATION_RATE + getStatusBarHeight());
            } else {
                float f5 = rect.left;
                getOverlayPadding().getClass();
                float f6 = f5 - RecyclerView.DECELERATION_RATE;
                float f7 = rect.top;
                getOverlayPadding().getClass();
                float f8 = f7 - RecyclerView.DECELERATION_RATE;
                float f9 = rect.right;
                getOverlayPadding().getClass();
                float f10 = f9 + RecyclerView.DECELERATION_RATE;
                float f11 = rect.bottom;
                getOverlayPadding().getClass();
                rectF = new RectF(f6, f8, f10, f11 + RecyclerView.DECELERATION_RATE);
            }
            getOverlayPadding().getClass();
            getOverlayPadding().getClass();
            getOverlayPadding().getClass();
            getOverlayPadding().getClass();
            RectF rectF2 = new RectF(rectF);
            rectF2.inset(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
            if (!(getBalloonOverlayShape() instanceof BalloonOverlayOval)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
            } else {
                canvas.drawOval(rectF, this.paint);
                canvas.drawOval(rectF2, this.paddingColorPaint);
            }
        }
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        View anchorView;
        View anchorView2;
        Bitmap bitmap;
        canvas.getClass();
        if ((this.invalidated || (bitmap = this.bitmap) == null || bitmap.isRecycled()) && getWidth() != 0 && getHeight() != 0 && (((anchorView = getAnchorView()) == null || anchorView.getWidth() != 0) && ((anchorView2 = getAnchorView()) == null || anchorView2.getHeight() != 0))) {
            Bitmap bitmap2 = this.bitmap;
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                bitmap2.recycle();
            }
            Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            createBitmap.getClass();
            this.bitmap = createBitmap;
            Canvas canvas2 = new Canvas(createBitmap);
            PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT);
            Paint paint = this.paint;
            paint.setXfermode(porterDuffXfermode);
            paint.setColor(getOverlayColor());
            canvas2.drawRect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, getWidth(), getHeight(), paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            paint.setColor(0);
            int overlayPaddingColor = getOverlayPaddingColor();
            Paint paint2 = this.paddingColorPaint;
            paint2.setColor(overlayPaddingColor);
            paint2.setStyle(Paint.Style.STROKE);
            getOverlayPadding().getClass();
            paint2.setStrokeWidth(RecyclerView.DECELERATION_RATE);
            paint2.setShader(getOverlayPaddingShader());
            List<View> anchorViewList = getAnchorViewList();
            if (anchorViewList == null || anchorViewList.isEmpty()) {
                addFocusViewInOverlay(getAnchorView(), canvas2);
            } else {
                List<View> anchorViewList2 = getAnchorViewList();
                if (anchorViewList2 != null) {
                    Iterator<T> it = anchorViewList2.iterator();
                    while (it.hasNext()) {
                        addFocusViewInOverlay((View) it.next(), canvas2);
                    }
                }
            }
            this.invalidated = false;
        }
        Bitmap bitmap3 = this.bitmap;
        if (bitmap3 == null || bitmap3.isRecycled()) {
            return;
        }
        canvas.drawBitmap(bitmap3, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (Paint) null);
    }

    public final View getAnchorView() {
        KProperty kProperty = $$delegatedProperties[0];
        FormBody.Builder builder = this.anchorView;
        builder.getClass();
        kProperty.getClass();
        return (View) builder.values;
    }

    public final List<View> getAnchorViewList() {
        KProperty kProperty = $$delegatedProperties[1];
        FormBody.Builder builder = this.anchorViewList;
        builder.getClass();
        kProperty.getClass();
        return (List) builder.values;
    }

    public final BalloonOverlayShape getBalloonOverlayShape() {
        KProperty kProperty = $$delegatedProperties[7];
        FormBody.Builder builder = this.balloonOverlayShape;
        builder.getClass();
        kProperty.getClass();
        return (BalloonOverlayShape) builder.values;
    }

    public final int getOverlayColor() {
        KProperty kProperty = $$delegatedProperties[2];
        FormBody.Builder builder = this.overlayColor;
        builder.getClass();
        kProperty.getClass();
        return ((Number) builder.values).intValue();
    }

    public final BalloonOverlayPadding getOverlayPadding() {
        KProperty kProperty = $$delegatedProperties[5];
        FormBody.Builder builder = this.overlayPadding;
        builder.getClass();
        kProperty.getClass();
        return (BalloonOverlayPadding) builder.values;
    }

    public final int getOverlayPaddingColor() {
        KProperty kProperty = $$delegatedProperties[3];
        FormBody.Builder builder = this.overlayPaddingColor;
        builder.getClass();
        kProperty.getClass();
        return ((Number) builder.values).intValue();
    }

    public final Shader getOverlayPaddingShader() {
        KProperty kProperty = $$delegatedProperties[4];
        FormBody.Builder builder = this.overlayPaddingShader;
        builder.getClass();
        kProperty.getClass();
        return (Shader) builder.values;
    }

    public final Point getOverlayPosition() {
        KProperty kProperty = $$delegatedProperties[6];
        FormBody.Builder builder = this.overlayPosition;
        builder.getClass();
        kProperty.getClass();
        return (Point) builder.values;
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.invalidated = true;
    }

    public final void setAnchorView(View view) {
        this.anchorView.setValue(view, $$delegatedProperties[0]);
    }

    public final void setAnchorViewList(List<? extends View> list) {
        this.anchorViewList.setValue(list, $$delegatedProperties[1]);
    }

    public final void setBalloonOverlayShape(BalloonOverlayShape balloonOverlayShape) {
        balloonOverlayShape.getClass();
        this.balloonOverlayShape.setValue(balloonOverlayShape, $$delegatedProperties[7]);
    }

    public final void setOverlayColor(int i) {
        KProperty kProperty = $$delegatedProperties[2];
        this.overlayColor.setValue(Integer.valueOf(i), kProperty);
    }

    public final void setOverlayPadding(BalloonOverlayPadding balloonOverlayPadding) {
        balloonOverlayPadding.getClass();
        this.overlayPadding.setValue(balloonOverlayPadding, $$delegatedProperties[5]);
    }

    public final void setOverlayPaddingColor(int i) {
        KProperty kProperty = $$delegatedProperties[3];
        this.overlayPaddingColor.setValue(Integer.valueOf(i), kProperty);
    }

    public final void setOverlayPaddingShader(Shader shader) {
        this.overlayPaddingShader.setValue(shader, $$delegatedProperties[4]);
    }

    public final void setOverlayPosition(Point point) {
        this.overlayPosition.setValue(point, $$delegatedProperties[6]);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BalloonAnchorOverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BalloonAnchorOverlayView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ BalloonAnchorOverlayView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
