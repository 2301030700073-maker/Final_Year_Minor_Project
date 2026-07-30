package c.b.a.b.a.a.a.a.c;

import android.app.contentsuggestions.ClassificationsRequest;
import android.app.contentsuggestions.ContentSelection;
import android.app.contentsuggestions.ContentSuggestionsManager;
import android.app.contentsuggestions.SelectionsRequest;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class N {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ContentSuggestionsManager f2396a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Executor f2397b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Handler f2398c;

    public N(ContentSuggestionsManager contentSuggestionsManager, Executor executor, Handler handler) {
        this.f2396a = contentSuggestionsManager;
        this.f2397b = executor;
        this.f2398c = handler;
    }

    public void a(Bundle bundle, InterfaceC0363b interfaceC0363b) {
        try {
            this.f2396a.classifyContentSelections(new ClassificationsRequest.Builder(new ArrayList()).setExtras(bundle).build(), this.f2397b, new M(interfaceC0363b));
        } catch (Throwable th) {
            Log.e("AiAiSuggestUi", "Failed to classifyContentSelections", th);
        }
    }

    public void b(int i, Bundle bundle, final InterfaceC0363b interfaceC0363b) {
        try {
            this.f2396a.suggestContentSelections(new SelectionsRequest.Builder(i).setExtras(bundle).build(), this.f2397b, new ContentSuggestionsManager.SelectionsCallback(interfaceC0363b) { // from class: c.b.a.b.a.a.a.a.c.L

                /* renamed from: a, reason: collision with root package name */
                public final InterfaceC0363b f2394a;

                {
                    this.f2394a = interfaceC0363b;
                }

                public void onContentSelectionsAvailable(int i2, List list) {
                    this.f2394a.a(((ContentSelection) list.get(0)).getExtras());
                }
            });
        } catch (Throwable th) {
            Log.e("AiAiSuggestUi", "Failed to suggestContentSelections", th);
        }
    }
}
