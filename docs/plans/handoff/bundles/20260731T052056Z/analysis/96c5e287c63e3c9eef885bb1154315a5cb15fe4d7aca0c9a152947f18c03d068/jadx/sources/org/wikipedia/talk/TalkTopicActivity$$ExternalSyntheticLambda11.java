package org.wikipedia.talk;

import android.view.View;
import androidx.lifecycle.ViewModelKt;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okio.ByteString;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicActivity$$ExternalSyntheticLambda11 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ TalkTopicActivity$$ExternalSyntheticLambda11(int i, long j, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = j;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                TalkTopicActivity talkTopicActivity = (TalkTopicActivity) obj;
                Request.Builder builder = talkTopicActivity.binding;
                Continuation continuation = null;
                if (builder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((LinearProgressIndicator) builder.method).setVisibility(0);
                TalkTopicViewModel viewModel = talkTopicActivity.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1(viewModel, 0), null, new TalkTopicViewModel$undo$2(viewModel, this.f$1, continuation, 0), 2);
                return;
            default:
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) obj;
                suggestedEditsImageRecsFragment.startActivity(ByteString.Companion.newIntent$default(ArticleEditDetailsActivity.Companion, suggestedEditsImageRecsFragment.requireContext(), suggestedEditsImageRecsFragment.getViewModel().getPageTitle(), -1, -1L, this.f$1, null, 32), null);
                return;
        }
    }
}
