package c.a.a.D0;

import com.android.launcher3.BubbleTextView;
import com.android.launcher3.model.data.PromiseAppInfo;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PromiseAppInfo f1259a;

    public /* synthetic */ k(PromiseAppInfo promiseAppInfo) {
        this.f1259a = promiseAppInfo;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        PromiseAppInfo promiseAppInfo = this.f1259a;
        BubbleTextView bubbleTextView = (BubbleTextView) obj;
        if (bubbleTextView.getTag() == promiseAppInfo) {
            bubbleTextView.applyProgressLevel(promiseAppInfo.level);
        }
    }
}
