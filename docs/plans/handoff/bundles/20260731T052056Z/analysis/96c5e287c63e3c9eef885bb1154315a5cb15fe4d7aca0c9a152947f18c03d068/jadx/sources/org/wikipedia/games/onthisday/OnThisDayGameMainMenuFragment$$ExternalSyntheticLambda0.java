package org.wikipedia.games.onthisday;

import android.view.View;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManager$PopBackStackState;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OnThisDayGameMainMenuFragment f$0;

    public /* synthetic */ OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(OnThisDayGameMainMenuFragment onThisDayGameMainMenuFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = onThisDayGameMainMenuFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        OnThisDayGameMainMenuFragment onThisDayGameMainMenuFragment = this.f$0;
        switch (i) {
            case 0:
                OnThisDayGameViewModel viewModel$2 = onThisDayGameMainMenuFragment.getViewModel$2();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$2), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$2, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$2, true, null), 2);
                break;
            case 1:
                onThisDayGameMainMenuFragment.requireActivity().finish();
                break;
            case 2:
                WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameMainMenuFragment.getViewModel$2().isArchiveGame), null, "play_click", "game_play", "game_start", null, null);
                FragmentManagerImpl supportFragmentManager = onThisDayGameMainMenuFragment.requireActivity().getSupportFragmentManager();
                supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                BackStackRecord backStackRecord = new BackStackRecord(onThisDayGameMainMenuFragment.requireActivity().getSupportFragmentManager());
                backStackRecord.replace(R.id.fragmentContainer, new OnThisDayGamePlayFragment(), null);
                backStackRecord.commit();
                break;
            case 3:
                onThisDayGameMainMenuFragment.prepareAndOpenArchiveCalendar(onThisDayGameMainMenuFragment.getViewModel$2().wikiSite.languageCode);
                break;
            case 4:
                WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameMainMenuFragment.getViewModel$2().isArchiveGame), null, "play_click", "game_play", "game_start", null, null);
                BackStackRecord backStackRecord2 = new BackStackRecord(onThisDayGameMainMenuFragment.requireActivity().getSupportFragmentManager());
                backStackRecord2.replace(R.id.fragmentContainer, new OnThisDayGamePlayFragment(), null);
                backStackRecord2.commit();
                break;
            case 5:
                BackStackRecord backStackRecord3 = new BackStackRecord(onThisDayGameMainMenuFragment.requireActivity().getSupportFragmentManager());
                Constants.InvokeSource invokeSource = onThisDayGameMainMenuFragment.getViewModel$2().invokeSource;
                invokeSource.getClass();
                OnThisDayGameResultFragment onThisDayGameResultFragment = new OnThisDayGameResultFragment();
                onThisDayGameResultFragment.setArguments(UStringsKt.bundleOf(new Pair("invokeSource", invokeSource)));
                backStackRecord3.replace(R.id.fragmentContainer, onThisDayGameResultFragment, null);
                backStackRecord3.commit();
                break;
            default:
                onThisDayGameMainMenuFragment.prepareAndOpenArchiveCalendar(onThisDayGameMainMenuFragment.getViewModel$2().wikiSite.languageCode);
                break;
        }
    }
}
