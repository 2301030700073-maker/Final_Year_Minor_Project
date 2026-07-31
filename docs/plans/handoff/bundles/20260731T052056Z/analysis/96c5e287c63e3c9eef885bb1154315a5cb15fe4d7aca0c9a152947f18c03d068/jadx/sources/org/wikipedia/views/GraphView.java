package org.wikipedia.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lorg/wikipedia/views/GraphView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "", "list", "", "setData", "(Ljava/util/List;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GraphView extends View {
    public final ArrayList dataSet;
    public final int gradientColor1;
    public final int gradientColor2;
    public float maxX;
    public float maxY;
    public final Path path;
    public final Paint pathPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        TypedValue typedValue = new TypedValue();
        typedValue = context.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true) ? typedValue : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
            throw null;
        }
        this.gradientColor1 = typedValue.data;
        this.gradientColor2 = context.getColor(R.color.green600);
        this.dataSet = new ArrayList();
        this.path = new Path();
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(7.0f);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setPathEffect(new CornerPathEffect(7.0f));
        paint.setAntiAlias(true);
        this.pathPaint = paint;
        setScaleY(-1.0f);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        Path path = this.path;
        path.reset();
        ArrayList arrayList = this.dataSet;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            float floatValue = ((Number) next).floatValue();
            if (i == 0) {
                path.moveTo(Animation.CC.m(getWidth(), 6.0f, i / this.maxX, 6.0f), Animation.CC.m(getHeight(), 6.0f, floatValue / this.maxY, 3.0f));
            } else if (i < arrayList.size()) {
                path.lineTo(Animation.CC.m(getWidth(), 6.0f, i / this.maxX, 6.0f), Animation.CC.m(getHeight(), 6.0f, floatValue / this.maxY, 3.0f));
            }
            i = i2;
        }
        canvas.drawPath(path, this.pathPaint);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        this.pathPaint.setShader(new LinearGradient(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, getWidth(), getHeight(), new int[]{this.gradientColor1, this.gradientColor2}, new float[]{RecyclerView.DECELERATION_RATE, 1.0f}, Shader.TileMode.MIRROR));
    }

    public final void setData(List<Float> list) {
        Float valueOf;
        list.getClass();
        this.maxX = list.size();
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            float floatValue = ((Number) it.next()).floatValue();
            while (it.hasNext()) {
                floatValue = Math.max(floatValue, ((Number) it.next()).floatValue());
            }
            valueOf = Float.valueOf(floatValue);
        } else {
            valueOf = null;
        }
        this.maxY = valueOf != null ? valueOf.floatValue() : RecyclerView.DECELERATION_RATE;
        ArrayList arrayList = this.dataSet;
        arrayList.clear();
        arrayList.addAll(list);
        invalidate();
    }
}
