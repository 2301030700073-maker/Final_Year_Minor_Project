package b.i.b;

import android.widget.ListView;
import androidx.fragment.app.ListFragment;

/* loaded from: classes.dex */
public class C0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListFragment f835a;

    public C0(ListFragment listFragment) {
        this.f835a = listFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        ListView listView = this.f835a.e;
        listView.focusableViewAvailable(listView);
    }
}
