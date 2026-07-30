package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import b.b.b;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final int f25a;

    /* renamed from: b, reason: collision with root package name */
    public final int f26b;

    public AlertController$RecycleListView(Context context) {
        this(context, null);
    }

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.t);
        this.f26b = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f25a = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
