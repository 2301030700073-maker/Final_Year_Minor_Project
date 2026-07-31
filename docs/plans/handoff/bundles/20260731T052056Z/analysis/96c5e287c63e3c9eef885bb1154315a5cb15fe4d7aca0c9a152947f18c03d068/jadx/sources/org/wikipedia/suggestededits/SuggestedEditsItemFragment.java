package org.wikipedia.suggestededits;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import org.wikipedia.dataclient.mwapi.MwQueryPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class SuggestedEditsItemFragment extends Fragment {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        String getLangCode();

        /* renamed from: getSinglePage */
        MwQueryPage getPage();

        void nextPage(Fragment fragment);

        void updateActionButton();
    }

    public boolean onBackPressed() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance();
    }

    public final SuggestedEditsCardsFragment parent() {
        Object obj = requireActivity().getSupportFragmentManager().mFragmentStore.getFragments().get(0);
        obj.getClass();
        return (SuggestedEditsCardsFragment) obj;
    }

    public boolean publishEnabled() {
        return true;
    }

    public void publish() {
    }
}
