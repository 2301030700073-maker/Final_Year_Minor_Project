package b.l;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import b.m.b.w0;

/* loaded from: classes.dex */
public class V extends w0 {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f1045a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f1046b;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f1047c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1048d;
    public boolean e;

    public V(View view) {
        super(view);
        this.f1047c = new SparseArray(4);
        TextView textView = (TextView) view.findViewById(R.id.title);
        this.f1047c.put(R.id.title, textView);
        this.f1047c.put(R.id.summary, view.findViewById(R.id.summary));
        this.f1047c.put(R.id.icon, view.findViewById(R.id.icon));
        this.f1047c.put(com.android.systemui.shared.R.id.icon_frame, view.findViewById(com.android.systemui.shared.R.id.icon_frame));
        this.f1047c.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        this.f1045a = view.getBackground();
        if (textView != null) {
            this.f1046b = textView.getTextColors();
        }
    }

    public View a(int i) {
        View view = (View) this.f1047c.get(i);
        if (view != null) {
            return view;
        }
        View findViewById = this.itemView.findViewById(i);
        if (findViewById != null) {
            this.f1047c.put(i, findViewById);
        }
        return findViewById;
    }
}
