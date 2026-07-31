package androidx.fragment.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import kotlin.collections.EmptyList;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda0;
import org.wikipedia.activitytab.ActivityTabCustomizationActivity;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda1;
import org.wikipedia.activitytab.ModuleType;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentManager$2 implements MenuProvider {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ FragmentManager$2(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        switch (this.$r8$classId) {
            case 0:
                ((FragmentManagerImpl) this.this$0).dispatchCreateOptionsMenu();
                break;
            default:
                menu.getClass();
                menuInflater.getClass();
                menuInflater.inflate(R.menu.menu_activity_tab_overflow, menu);
                break;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
        switch (this.$r8$classId) {
            case 0:
                ((FragmentManagerImpl) this.this$0).dispatchOptionsMenuClosed();
                break;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return ((FragmentManagerImpl) obj).dispatchOptionsItemSelected();
            default:
                menuItem.getClass();
                ActivityTabFragment activityTabFragment = (ActivityTabFragment) obj;
                int itemId = menuItem.getItemId();
                int i2 = 1;
                if (itemId == R.id.menu_customize_activity_tab) {
                    WikiGamesEvent.submit$default("activity_tab_overflow_menu", "customize_click", null, null, null, null, null, null, null, null, null, null, 16380);
                    int i3 = ActivityTabCustomizationActivity.$r8$clinit;
                    activityTabFragment.startActivity(new Intent(activityTabFragment.requireContext(), (Class<?>) ActivityTabCustomizationActivity.class), null);
                    return true;
                }
                if (itemId == R.id.menu_clear_history) {
                    WikiGamesEvent.submit$default("activity_tab_overflow_menu", "clear_history_click", null, null, null, null, null, null, null, null, null, null, 16380);
                    Context requireContext = activityTabFragment.requireContext();
                    LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(activityTabFragment);
                    ActivityTabFragment$$ExternalSyntheticLambda1 activityTabFragment$$ExternalSyntheticLambda1 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 6);
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext, 0);
                    materialAlertDialogBuilder.setTitle(R.string.dialog_title_clear_history);
                    materialAlertDialogBuilder.setMessage(R.string.dialog_message_clear_history);
                    materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_clear_history_yes, new BaseActivity$$ExternalSyntheticLambda0(i2, lifecycleScope, activityTabFragment$$ExternalSyntheticLambda1));
                    materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_clear_history_no, (DialogInterface.OnClickListener) null);
                    materialAlertDialogBuilder.show();
                    return true;
                }
                if (itemId == R.id.menu_clear_donation_history) {
                    WikiGamesEvent.submit$default("activity_tab_overflow_menu", "clear_donation_history_click", null, null, null, null, null, null, null, null, null, null, 16380);
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setDonationResults(EmptyList.INSTANCE);
                    Prefs.setActivityTabModules(Prefs.getActivityTabModules().setModuleEnabled(ModuleType.DONATIONS, false));
                    activityTabFragment.getViewModel().loadAll();
                    return true;
                }
                if (itemId == R.id.menu_learn_more) {
                    WikiGamesEvent.submit$default("activity_tab_overflow_menu", "learn_click", null, null, null, null, null, null, null, null, null, null, 16380);
                    AppCompatActivity requireActivity = activityTabFragment.requireActivity();
                    String string = activityTabFragment.getString(R.string.activity_tab_url);
                    string.getClass();
                    Uri parse = Uri.parse(string);
                    parse.getClass();
                    UriUtil.visitInExternalBrowser(requireActivity, parse);
                    return true;
                }
                if (itemId != R.id.menu_report_feature) {
                    return false;
                }
                WikiGamesEvent.submit$default("activity_tab_overflow_menu", "problem_click", null, null, null, null, null, null, null, null, null, null, 16380);
                Context requireContext2 = activityTabFragment.requireContext();
                String string2 = activityTabFragment.getString(R.string.activity_tab_report_email_subject);
                string2.getClass();
                String string3 = activityTabFragment.getString(R.string.activity_tab_report_email_body);
                string3.getClass();
                ShareUtil.composeEmail$default(requireContext2, null, string2, string3, 2);
                return true;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        switch (this.$r8$classId) {
            case 0:
                ((FragmentManagerImpl) this.this$0).dispatchPrepareOptionsMenu();
                break;
        }
    }

    private final void onMenuClosed$org$wikipedia$activitytab$ActivityTabFragment$menuProvider$1(Menu menu) {
    }

    private final void onPrepareMenu$org$wikipedia$activitytab$ActivityTabFragment$menuProvider$1(Menu menu) {
    }
}
