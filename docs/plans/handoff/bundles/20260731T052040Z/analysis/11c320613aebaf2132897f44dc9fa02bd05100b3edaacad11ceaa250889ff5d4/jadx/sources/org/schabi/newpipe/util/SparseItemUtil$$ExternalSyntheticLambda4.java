package org.schabi.newpipe.util;

import android.content.Context;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SparseItemUtil$$ExternalSyntheticLambda4 implements Action, Consumer {
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ StreamInfo f$1;

    public /* synthetic */ SparseItemUtil$$ExternalSyntheticLambda4(Context context, StreamInfo streamInfo) {
        this.f$0 = context;
        this.f$1 = streamInfo;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        ErrorUtil.createNotification(this.f$0, new ErrorInfo((Throwable) obj, UserAction.REQUESTED_STREAM, "Saving stream info to database", this.f$1));
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        AppKt.getInstance(this.f$0).streamDAO().upsert(new StreamEntity(this.f$1));
    }
}
