package defpackage;

import android.view.View;
import androidx.appcompat.app.AlertController;

/* renamed from: w0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC3894w0 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f16180do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AlertController f16181do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ View f16182if;

    public RunnableC3894w0(AlertController alertController, View view, View view2) {
        this.f16181do = alertController;
        this.f16180do = view;
        this.f16182if = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertController.m3228if(this.f16181do.f5180do, this.f16180do, this.f16182if);
    }
}
