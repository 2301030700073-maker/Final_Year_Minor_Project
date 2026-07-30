package c.b.a.b.a.a.a.a.c;

import android.app.contentsuggestions.ContentClassification;
import android.app.contentsuggestions.ContentSuggestionsManager;
import java.util.List;

/* loaded from: classes.dex */
public class M implements ContentSuggestionsManager.ClassificationsCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0363b f2395a;

    public M(InterfaceC0363b interfaceC0363b) {
        this.f2395a = interfaceC0363b;
    }

    public void onContentClassificationsAvailable(int i, List list) {
        this.f2395a.a(((ContentClassification) list.get(0)).getExtras());
    }
}
