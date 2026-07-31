package org.wikipedia.views;

import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda23;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditNoticesDialog extends MaterialAlertDialogBuilder {
    public final /* synthetic */ int $r8$classId = 1;
    public AlertDialog dialog;
    public final Object editNotices;
    public final LinkMovementMethodExt movementMethod;
    public final Object wikiSite;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DefaultViewHolder extends RecyclerView.ViewHolder {
        public DefaultViewHolder(TextView textView) {
            super(textView);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditNoticesDialog(WikiSite wikiSite, List list, EditSectionActivity editSectionActivity) {
        super(editSectionActivity, 0);
        wikiSite.getClass();
        list.getClass();
        this.wikiSite = wikiSite;
        this.editNotices = list;
        View inflate = editSectionActivity.getLayoutInflater().inflate(R.layout.dialog_edit_notices, (ViewGroup) null, false);
        int i = R.id.editNoticeCheckbox;
        CheckBox checkBox = (CheckBox) Room.findChildViewById(inflate, R.id.editNoticeCheckbox);
        if (checkBox != null) {
            i = R.id.editNoticeCloseButton;
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.editNoticeCloseButton);
            if (imageView != null) {
                i = R.id.editNoticeHint;
                if (((TextView) Room.findChildViewById(inflate, R.id.editNoticeHint)) != null) {
                    i = R.id.editNoticeImage;
                    if (((ImageView) Room.findChildViewById(inflate, R.id.editNoticeImage)) != null) {
                        i = R.id.editNoticeRecycler;
                        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.editNoticeRecycler);
                        if (recyclerView != null) {
                            i = R.id.editNoticeTitle;
                            if (((TextView) Room.findChildViewById(inflate, R.id.editNoticeTitle)) != null) {
                                int i2 = 13;
                                this.movementMethod = new LinkMovementMethodExt(new SearchFragment$$ExternalSyntheticLambda1(i2, this));
                                ((AlertController.AlertParams) this.array).mView = (FrameLayout) inflate;
                                imageView.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(29, this));
                                recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(i2, this));
                                ContextThemeWrapper contextThemeWrapper = ((AlertController.AlertParams) this.array).mContext;
                                boolean z = true;
                                recyclerView.setLayoutManager(new LinearLayoutManager(1));
                                recyclerView.addItemDecoration(new DrawableItemDecoration(((AlertController.AlertParams) this.array).mContext, z, z, 16));
                                Prefs prefs = Prefs.INSTANCE;
                                checkBox.setChecked(Prefs.getAutoShowEditNotices());
                                checkBox.setOnCheckedChangeListener(new EditNoticesDialog$$ExternalSyntheticLambda2());
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // okio.PriorityQueue
    public final AlertDialog show() {
        switch (this.$r8$classId) {
            case 0:
                AlertDialog show = super.show();
                this.dialog = show;
                return show;
            default:
                AlertDialog show2 = super.show();
                this.dialog = show2;
                return show2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditNoticesDialog(AppCompatActivity appCompatActivity, WikiSite wikiSite, ArrayList arrayList, PageFragment$$ExternalSyntheticLambda23 pageFragment$$ExternalSyntheticLambda23) {
        super(appCompatActivity, 0);
        boolean z = true;
        wikiSite.getClass();
        this.wikiSite = arrayList;
        this.editNotices = pageFragment$$ExternalSyntheticLambda23;
        View inflate = appCompatActivity.getLayoutInflater().inflate(R.layout.dialog_page_issues, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recycler);
        if (recyclerView != null) {
            this.movementMethod = new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandlerWithText) new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(28, this));
            ((AlertController.AlertParams) this.array).mView = (FrameLayout) inflate;
            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(3, this));
            ContextThemeWrapper contextThemeWrapper = ((AlertController.AlertParams) this.array).mContext;
            recyclerView.setLayoutManager(new LinearLayoutManager(1));
            recyclerView.addItemDecoration(new DrawableItemDecoration(((AlertController.AlertParams) this.array).mContext, z, z, 16));
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.recycler)));
        throw null;
    }
}
