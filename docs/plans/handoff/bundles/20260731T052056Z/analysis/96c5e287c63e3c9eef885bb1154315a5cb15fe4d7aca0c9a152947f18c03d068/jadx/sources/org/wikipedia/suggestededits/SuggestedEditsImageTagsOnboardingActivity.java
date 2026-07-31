package org.wikipedia.suggestededits;

import android.os.Bundle;
import kotlin.Metadata;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagsOnboardingActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_suggested_edits_tags_onboarding);
        findViewById(R.id.onboarding_done_button).setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(22, this));
    }
}
