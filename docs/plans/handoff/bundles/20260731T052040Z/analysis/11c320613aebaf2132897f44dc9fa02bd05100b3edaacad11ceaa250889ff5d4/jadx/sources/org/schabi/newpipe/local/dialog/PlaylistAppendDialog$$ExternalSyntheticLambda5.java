package org.schabi.newpipe.local.dialog;

import android.widget.Toast;
import io.reactivex.rxjava3.functions.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlaylistAppendDialog$$ExternalSyntheticLambda5 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Toast f$0;

    public /* synthetic */ PlaylistAppendDialog$$ExternalSyntheticLambda5(Toast toast, int i) {
        this.$r8$classId = i;
        this.f$0 = toast;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.show();
                break;
            default:
                this.f$0.show();
                break;
        }
    }
}
