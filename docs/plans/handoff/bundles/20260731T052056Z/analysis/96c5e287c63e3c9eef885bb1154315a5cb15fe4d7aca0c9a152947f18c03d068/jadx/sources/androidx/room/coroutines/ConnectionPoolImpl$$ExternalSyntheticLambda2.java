package androidx.room.coroutines;

import android.content.Intent;
import android.database.SQLException;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import coil3.util.ContextsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.feed.onboarding.ExploreFeedBuildingActivity;
import org.wikipedia.feed.personalization.PersonalizationActivity;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.widgets.SearchWidgetInstallDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ConnectionPoolImpl$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ ConnectionPoolImpl$$ExternalSyntheticLambda2(Object obj, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        MutableSharedFlow stylusHandwritingTrigger;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$0;
        boolean z = this.f$1;
        switch (i) {
            case 0:
                ConnectionPoolImpl connectionPoolImpl = (ConnectionPoolImpl) obj;
                String str = z ? "reader" : "writer";
                StringBuilder sb = new StringBuilder();
                sb.append("Timed out attempting to acquire a " + str + " connection.");
                sb.append("\n\nWriter pool:\n");
                connectionPoolImpl.writers.dump(sb);
                sb.append("Reader pool:");
                sb.append('\n');
                connectionPoolImpl.readers.dump(sb);
                try {
                    ContextsKt.throwSQLiteException(5, sb.toString());
                    throw null;
                } catch (SQLException e) {
                    e.printStackTrace();
                    return unit;
                }
            case 1:
                Function0 function0 = (Function0) obj;
                if (z) {
                    function0.invoke();
                }
                return unit;
            case 2:
                ((Function1) obj).invoke(Boolean.valueOf(!z));
                return unit;
            case 3:
                AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter = (AndroidLegacyPlatformTextInputServiceAdapter) obj;
                if (z && (stylusHandwritingTrigger = androidLegacyPlatformTextInputServiceAdapter.getStylusHandwritingTrigger()) != null) {
                    ((SharedFlowImpl) stylusHandwritingTrigger).tryEmit(unit);
                }
                return unit;
            case 4:
                ((DonationReminderViewModel) obj).toggleDonationReminders(!z);
                return unit;
            case 5:
                PersonalizationActivity personalizationActivity = (PersonalizationActivity) obj;
                int i2 = PersonalizationActivity.$r8$clinit;
                if (z) {
                    personalizationActivity.setResult(((PersonalizationViewModel) personalizationActivity.viewModel$delegate.getValue()).interestsUpdated ? 100 : -1);
                    personalizationActivity.finish();
                } else {
                    personalizationActivity.startActivity(new Intent(personalizationActivity, (Class<?>) ExploreFeedBuildingActivity.class));
                    personalizationActivity.setResult(-1);
                    personalizationActivity.finish();
                }
                return unit;
            default:
                SearchWidgetInstallDialog.onCreateView$lambda$0$0$0$1$0$0(z, (SearchWidgetInstallDialog) obj);
                return unit;
        }
    }

    public /* synthetic */ ConnectionPoolImpl$$ExternalSyntheticLambda2(boolean z, Object obj, int i) {
        this.$r8$classId = i;
        this.f$1 = z;
        this.f$0 = obj;
    }
}
