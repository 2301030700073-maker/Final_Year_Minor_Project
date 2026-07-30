package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public List f2363a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2364b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public List f2365c;

    public y(Bundle bundle) {
        if (bundle.containsKey("rects")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("rects");
            if (parcelableArrayList == null) {
                this.f2363a = null;
            } else {
                this.f2363a = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        this.f2363a.add(null);
                    } else {
                        this.f2363a.add(new u(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("selectionId")) {
            this.f2364b = bundle.getString("selectionId");
        }
        if (bundle.containsKey("rectIndices")) {
            this.f2365c = bundle.getIntegerArrayList("rectIndices");
        }
    }

    public y() {
    }
}
