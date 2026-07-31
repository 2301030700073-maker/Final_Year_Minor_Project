package com.google.android.material.datepicker;

import android.view.View;
import com.google.android.material.internal.ViewUtils$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DateSelector$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ View f$0;

    public /* synthetic */ DateSelector$$ExternalSyntheticLambda1(View view, int i) {
        this.$r8$classId = i;
        this.f$0 = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        View view = this.f$0;
        switch (i) {
            case 0:
                view.requestFocus();
                view.post(new ViewUtils$$ExternalSyntheticLambda0(view, 0));
                break;
            default:
                MaterialCalendarGridView.$r8$lambda$PqZsnkFZF7YntKmtXySyj_K1Prk((MaterialCalendarGridView) view);
                break;
        }
    }
}
