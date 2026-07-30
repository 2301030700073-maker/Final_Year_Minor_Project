package b.b.c;

import android.content.Context;
import android.widget.ArrayAdapter;

/* renamed from: b.b.c.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0012k extends ArrayAdapter {
    public C0012k(Context context, int i, int i2, CharSequence[] charSequenceArr) {
        super(context, i, i2, charSequenceArr);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
