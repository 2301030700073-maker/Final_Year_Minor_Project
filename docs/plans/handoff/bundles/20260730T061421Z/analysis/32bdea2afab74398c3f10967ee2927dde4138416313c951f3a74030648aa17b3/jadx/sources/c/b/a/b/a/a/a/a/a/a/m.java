package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2323a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2324b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2325c;

    /* renamed from: d, reason: collision with root package name */
    public int f2326d;
    public int e;
    public int f;
    public int g;

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("smartSelectionSingleWord", this.f2323a);
        bundle.putBoolean("userSelectionSingleWord", this.f2324b);
        bundle.putBoolean("selectionModified", this.f2325c);
        bundle.putInt("smartSelectionRangeStart", this.f2326d);
        bundle.putInt("smartSelectionRangeEnd", this.e);
        bundle.putInt("userSelectionRangeStart", this.f);
        bundle.putInt("userSelectionRangeEnd", this.g);
        return bundle;
    }
}
