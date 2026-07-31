package org.wikipedia.talk.template;

import android.view.MotionEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.views.DefaultViewHolder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0 implements View.OnTouchListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment f$0;
    public final /* synthetic */ RecyclerView.ViewHolder f$1;

    public /* synthetic */ TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0(Fragment fragment, RecyclerView.ViewHolder viewHolder, int i) {
        this.$r8$classId = i;
        this.f$0 = fragment;
        this.f$1 = viewHolder;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i = this.$r8$classId;
        RecyclerView.ViewHolder viewHolder = this.f$1;
        Fragment fragment = this.f$0;
        switch (i) {
            case 0:
                TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) fragment;
                TalkTemplatesFragment.TalkTemplatesItemViewHolder talkTemplatesItemViewHolder = (TalkTemplatesFragment.TalkTemplatesItemViewHolder) viewHolder;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    ItemTouchHelper itemTouchHelper = talkTemplatesFragment.itemTouchHelper;
                    if (itemTouchHelper == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelper");
                        throw null;
                    }
                    itemTouchHelper.startDrag(talkTemplatesItemViewHolder);
                } else if (actionMasked == 1) {
                    view.performClick();
                }
                return false;
            case 1:
                CustomizeToolbarFragment customizeToolbarFragment = (CustomizeToolbarFragment) fragment;
                DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    ItemTouchHelper itemTouchHelper2 = customizeToolbarFragment.itemTouchHelper;
                    if (itemTouchHelper2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelper");
                        throw null;
                    }
                    itemTouchHelper2.startDrag(defaultViewHolder);
                } else if (actionMasked2 == 1) {
                    view.performClick();
                }
                return false;
            default:
                WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) fragment;
                DefaultViewHolder defaultViewHolder2 = (DefaultViewHolder) viewHolder;
                int actionMasked3 = motionEvent.getActionMasked();
                if (actionMasked3 == 0) {
                    ItemTouchHelper itemTouchHelper3 = wikipediaLanguagesFragment.itemTouchHelper;
                    if (itemTouchHelper3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelper");
                        throw null;
                    }
                    itemTouchHelper3.startDrag(defaultViewHolder2);
                } else if (actionMasked3 == 1) {
                    view.performClick();
                }
                return false;
        }
    }
}
