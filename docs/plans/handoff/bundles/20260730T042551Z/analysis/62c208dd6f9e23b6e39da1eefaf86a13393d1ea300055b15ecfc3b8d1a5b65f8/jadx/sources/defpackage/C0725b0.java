package defpackage;

import androidx.activity.result.Cdo;
import java.util.HashMap;

/* renamed from: b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0725b0 extends AbstractC0665a0<Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ W f8302do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cdo f8303do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f8304do;

    public C0725b0(Cdo cdo, String str, W w) {
        this.f8303do = cdo;
        this.f8304do = str;
        this.f8302do = w;
    }

    @Override // defpackage.AbstractC0665a0
    /* renamed from: do */
    public final void mo3104do(Object obj) {
        Cdo cdo = this.f8303do;
        HashMap hashMap = cdo.f5161if;
        String str = this.f8304do;
        Integer num = (Integer) hashMap.get(str);
        W w = this.f8302do;
        if (num != null) {
            cdo.f5158do.add(str);
            try {
                cdo.mo3193if(num.intValue(), w, obj);
                return;
            } catch (Exception e) {
                cdo.f5158do.remove(str);
                throw e;
            }
        }
        throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + w + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
    }

    @Override // defpackage.AbstractC0665a0
    /* renamed from: if */
    public final void mo3105if() {
        this.f8303do.m3204case(this.f8304do);
    }
}
