package org.wikipedia.page.edithistory;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.ColorUtils;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.button.MaterialButton;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryItemView;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.talk.UserTalkPopupHelper;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHistoryItemView extends FrameLayout {
    public final SVGAndroidRenderer binding;
    public Listener listener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Listener {
    }

    public EditHistoryItemView(Context context) {
        super(context);
        final int i = 0;
        View inflate = LayoutInflater.from(context).inflate(R.layout.item_edit_history, (ViewGroup) this, false);
        addView(inflate);
        WikiCardView wikiCardView = (WikiCardView) inflate;
        int i2 = R.id.clickTargetView;
        ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.clickTargetView);
        if (constraintLayout != null) {
            i2 = R.id.diffText;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.diffText);
            if (textView != null) {
                i2 = R.id.editHistoryTimeText;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.editHistoryTimeText);
                if (textView2 != null) {
                    i2 = R.id.editHistoryTitle;
                    TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.editHistoryTitle);
                    if (textView3 != null) {
                        i2 = R.id.selectButton;
                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.selectButton);
                        if (imageView != null) {
                            i2 = R.id.userNameAndDiffFlow;
                            if (((Flow) Room.findChildViewById(inflate, R.id.userNameAndDiffFlow)) != null) {
                                i2 = R.id.userNameText;
                                MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.userNameText);
                                if (materialButton != null) {
                                    SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer();
                                    sVGAndroidRenderer.canvas = wikiCardView;
                                    sVGAndroidRenderer.document = textView;
                                    sVGAndroidRenderer.state = textView2;
                                    sVGAndroidRenderer.stateStack = textView3;
                                    sVGAndroidRenderer.parentStack = imageView;
                                    sVGAndroidRenderer.matrixStack = materialButton;
                                    this.binding = sVGAndroidRenderer;
                                    setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                    constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.edithistory.EditHistoryItemView$$ExternalSyntheticLambda0
                                        public final /* synthetic */ EditHistoryItemView f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i3 = i;
                                            EditHistoryItemView editHistoryItemView = this.f$0;
                                            switch (i3) {
                                                case 0:
                                                    EditHistoryItemView.Listener listener = editHistoryItemView.listener;
                                                    if (listener != null) {
                                                        EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder = (EditHistoryListActivity.EditHistoryListItemHolder) listener;
                                                        EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                                                        int i4 = EditHistoryListActivity.$r8$clinit;
                                                        if (editHistoryListActivity.getViewModel().comparing) {
                                                            editHistoryListItemHolder.toggleSelectState();
                                                            return;
                                                        }
                                                        ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                                                        PageTitle pageTitle = editHistoryListActivity.getViewModel().pageTitle;
                                                        int i5 = editHistoryListActivity.getViewModel().pageId;
                                                        MwQueryPage.Revision revision = editHistoryListItemHolder.revision;
                                                        if (revision != null) {
                                                            editHistoryListActivity.startActivity(ByteString.Companion.newIntent$default(companion, editHistoryListActivity, pageTitle, i5, 0L, revision.revId, null, 40));
                                                            return;
                                                        } else {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                    }
                                                    return;
                                                case 1:
                                                    EditHistoryItemView.Listener listener2 = editHistoryItemView.listener;
                                                    if (listener2 != null) {
                                                        ((EditHistoryListActivity.EditHistoryListItemHolder) listener2).toggleSelectState();
                                                        return;
                                                    }
                                                    return;
                                                default:
                                                    EditHistoryItemView.Listener listener3 = editHistoryItemView.listener;
                                                    if (listener3 != null) {
                                                        view.getClass();
                                                        EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder2 = (EditHistoryListActivity.EditHistoryListItemHolder) listener3;
                                                        EditHistoryListActivity editHistoryListActivity2 = EditHistoryListActivity.this;
                                                        int i6 = EditHistoryListActivity.$r8$clinit;
                                                        if (editHistoryListActivity2.getViewModel().comparing) {
                                                            editHistoryListItemHolder2.toggleSelectState();
                                                            return;
                                                        }
                                                        String valueFor = UserAliasData.valueFor(editHistoryListActivity2.getViewModel().pageTitle.wikiSite.languageCode);
                                                        MwQueryPage.Revision revision2 = editHistoryListItemHolder2.revision;
                                                        if (revision2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                        PageTitle pageTitle2 = new PageTitle(valueFor, revision2.user, editHistoryListActivity2.getViewModel().pageTitle.wikiSite);
                                                        MwQueryPage.Revision revision3 = editHistoryListItemHolder2.revision;
                                                        if (revision3 != null) {
                                                            UserTalkPopupHelper.INSTANCE.show(editHistoryListActivity2, pageTitle2, revision3.isAnon, view, Constants.InvokeSource.DIFF_ACTIVITY, 33, (r21 & 64) != 0 ? null : Long.valueOf(revision3.revId), (r21 & 128) != 0 ? null : Integer.valueOf(editHistoryListActivity2.getViewModel().pageId), false);
                                                            return;
                                                        } else {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                    }
                                                    return;
                                            }
                                        }
                                    });
                                    constraintLayout.setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(4, this));
                                    final int i3 = 1;
                                    imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.edithistory.EditHistoryItemView$$ExternalSyntheticLambda0
                                        public final /* synthetic */ EditHistoryItemView f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i3;
                                            EditHistoryItemView editHistoryItemView = this.f$0;
                                            switch (i32) {
                                                case 0:
                                                    EditHistoryItemView.Listener listener = editHistoryItemView.listener;
                                                    if (listener != null) {
                                                        EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder = (EditHistoryListActivity.EditHistoryListItemHolder) listener;
                                                        EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                                                        int i4 = EditHistoryListActivity.$r8$clinit;
                                                        if (editHistoryListActivity.getViewModel().comparing) {
                                                            editHistoryListItemHolder.toggleSelectState();
                                                            return;
                                                        }
                                                        ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                                                        PageTitle pageTitle = editHistoryListActivity.getViewModel().pageTitle;
                                                        int i5 = editHistoryListActivity.getViewModel().pageId;
                                                        MwQueryPage.Revision revision = editHistoryListItemHolder.revision;
                                                        if (revision != null) {
                                                            editHistoryListActivity.startActivity(ByteString.Companion.newIntent$default(companion, editHistoryListActivity, pageTitle, i5, 0L, revision.revId, null, 40));
                                                            return;
                                                        } else {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                    }
                                                    return;
                                                case 1:
                                                    EditHistoryItemView.Listener listener2 = editHistoryItemView.listener;
                                                    if (listener2 != null) {
                                                        ((EditHistoryListActivity.EditHistoryListItemHolder) listener2).toggleSelectState();
                                                        return;
                                                    }
                                                    return;
                                                default:
                                                    EditHistoryItemView.Listener listener3 = editHistoryItemView.listener;
                                                    if (listener3 != null) {
                                                        view.getClass();
                                                        EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder2 = (EditHistoryListActivity.EditHistoryListItemHolder) listener3;
                                                        EditHistoryListActivity editHistoryListActivity2 = EditHistoryListActivity.this;
                                                        int i6 = EditHistoryListActivity.$r8$clinit;
                                                        if (editHistoryListActivity2.getViewModel().comparing) {
                                                            editHistoryListItemHolder2.toggleSelectState();
                                                            return;
                                                        }
                                                        String valueFor = UserAliasData.valueFor(editHistoryListActivity2.getViewModel().pageTitle.wikiSite.languageCode);
                                                        MwQueryPage.Revision revision2 = editHistoryListItemHolder2.revision;
                                                        if (revision2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                        PageTitle pageTitle2 = new PageTitle(valueFor, revision2.user, editHistoryListActivity2.getViewModel().pageTitle.wikiSite);
                                                        MwQueryPage.Revision revision3 = editHistoryListItemHolder2.revision;
                                                        if (revision3 != null) {
                                                            UserTalkPopupHelper.INSTANCE.show(editHistoryListActivity2, pageTitle2, revision3.isAnon, view, Constants.InvokeSource.DIFF_ACTIVITY, 33, (r21 & 64) != 0 ? null : Long.valueOf(revision3.revId), (r21 & 128) != 0 ? null : Integer.valueOf(editHistoryListActivity2.getViewModel().pageId), false);
                                                            return;
                                                        } else {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                    }
                                                    return;
                                            }
                                        }
                                    });
                                    final int i4 = 2;
                                    materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.edithistory.EditHistoryItemView$$ExternalSyntheticLambda0
                                        public final /* synthetic */ EditHistoryItemView f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i4;
                                            EditHistoryItemView editHistoryItemView = this.f$0;
                                            switch (i32) {
                                                case 0:
                                                    EditHistoryItemView.Listener listener = editHistoryItemView.listener;
                                                    if (listener != null) {
                                                        EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder = (EditHistoryListActivity.EditHistoryListItemHolder) listener;
                                                        EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                                                        int i42 = EditHistoryListActivity.$r8$clinit;
                                                        if (editHistoryListActivity.getViewModel().comparing) {
                                                            editHistoryListItemHolder.toggleSelectState();
                                                            return;
                                                        }
                                                        ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                                                        PageTitle pageTitle = editHistoryListActivity.getViewModel().pageTitle;
                                                        int i5 = editHistoryListActivity.getViewModel().pageId;
                                                        MwQueryPage.Revision revision = editHistoryListItemHolder.revision;
                                                        if (revision != null) {
                                                            editHistoryListActivity.startActivity(ByteString.Companion.newIntent$default(companion, editHistoryListActivity, pageTitle, i5, 0L, revision.revId, null, 40));
                                                            return;
                                                        } else {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                    }
                                                    return;
                                                case 1:
                                                    EditHistoryItemView.Listener listener2 = editHistoryItemView.listener;
                                                    if (listener2 != null) {
                                                        ((EditHistoryListActivity.EditHistoryListItemHolder) listener2).toggleSelectState();
                                                        return;
                                                    }
                                                    return;
                                                default:
                                                    EditHistoryItemView.Listener listener3 = editHistoryItemView.listener;
                                                    if (listener3 != null) {
                                                        view.getClass();
                                                        EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder2 = (EditHistoryListActivity.EditHistoryListItemHolder) listener3;
                                                        EditHistoryListActivity editHistoryListActivity2 = EditHistoryListActivity.this;
                                                        int i6 = EditHistoryListActivity.$r8$clinit;
                                                        if (editHistoryListActivity2.getViewModel().comparing) {
                                                            editHistoryListItemHolder2.toggleSelectState();
                                                            return;
                                                        }
                                                        String valueFor = UserAliasData.valueFor(editHistoryListActivity2.getViewModel().pageTitle.wikiSite.languageCode);
                                                        MwQueryPage.Revision revision2 = editHistoryListItemHolder2.revision;
                                                        if (revision2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                        PageTitle pageTitle2 = new PageTitle(valueFor, revision2.user, editHistoryListActivity2.getViewModel().pageTitle.wikiSite);
                                                        MwQueryPage.Revision revision3 = editHistoryListItemHolder2.revision;
                                                        if (revision3 != null) {
                                                            UserTalkPopupHelper.INSTANCE.show(editHistoryListActivity2, pageTitle2, revision3.isAnon, view, Constants.InvokeSource.DIFF_ACTIVITY, 33, (r21 & 64) != 0 ? null : Long.valueOf(revision3.revId), (r21 & 128) != 0 ? null : Integer.valueOf(editHistoryListActivity2.getViewModel().pageId), false);
                                                            return;
                                                        } else {
                                                            Intrinsics.throwUninitializedPropertyAccessException("revision");
                                                            throw null;
                                                        }
                                                    }
                                                    return;
                                            }
                                        }
                                    });
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    public final Listener getListener() {
        return this.listener;
    }

    public final void setListener(Listener listener) {
        this.listener = listener;
    }

    public final void setSelectedState(int i) {
        Context context = getContext();
        context.getClass();
        int themedColor = Cache.Companion.getThemedColor(context, R.attr.paper_color);
        Context context2 = getContext();
        context2.getClass();
        ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context2, R.attr.secondary_color);
        Context context3 = getContext();
        context3.getClass();
        ColorStateList themedColorStateList2 = Cache.Companion.getThemedColorStateList(context3, R.attr.primary_color);
        Context context4 = getContext();
        context4.getClass();
        int themedColor2 = Cache.Companion.getThemedColor(context4, R.attr.progressive_color);
        Context context5 = getContext();
        context5.getClass();
        int themedColor3 = Cache.Companion.getThemedColor(context5, R.attr.warning_color);
        SVGAndroidRenderer sVGAndroidRenderer = this.binding;
        ImageView imageView = (ImageView) sVGAndroidRenderer.parentStack;
        TextView textView = (TextView) sVGAndroidRenderer.state;
        WikiCardView wikiCardView = (WikiCardView) sVGAndroidRenderer.canvas;
        ImageView imageView2 = (ImageView) sVGAndroidRenderer.parentStack;
        MaterialButton materialButton = (MaterialButton) sVGAndroidRenderer.matrixStack;
        imageView.setVisibility(i != 0 ? 0 : 8);
        if (i == 0 || i == 1) {
            imageView2.setImageResource(R.drawable.ic_check_empty_24);
            imageView2.setImageTintList(themedColorStateList);
            wikiCardView.setDefaultBorder();
            wikiCardView.setCardBackgroundColor(themedColor);
            Context context6 = getContext();
            context6.getClass();
            materialButton.setBackgroundTintList(Cache.Companion.getThemedColorStateList(context6, R.attr.background_color));
            materialButton.setTextColor(themedColorStateList2);
            materialButton.setIconTint(themedColorStateList2);
            textView.setTextColor(themedColorStateList);
            return;
        }
        if (i == 2) {
            imageView2.setImageResource(R.drawable.ic_check_circle_black_24dp);
            imageView2.setImageTintList(ColorStateList.valueOf(themedColor2));
            wikiCardView.setStrokeColor(themedColor2);
            int blendARGB = ColorUtils.blendARGB(themedColor, 0.05f, themedColor2);
            wikiCardView.setCardBackgroundColor(blendARGB);
            materialButton.setBackgroundTintList(ColorStateList.valueOf(ColorUtils.blendARGB(blendARGB, 0.05f, themedColor2)));
            materialButton.setTextColor(themedColor2);
            materialButton.setIconTint(ColorStateList.valueOf(themedColor2));
            textView.setTextColor(themedColor2);
            return;
        }
        if (i != 3) {
            return;
        }
        imageView2.setImageResource(R.drawable.ic_check_circle_black_24dp);
        imageView2.setImageTintList(ColorStateList.valueOf(themedColor3));
        wikiCardView.setStrokeColor(getContext().getColor(R.color.orange500));
        int blendARGB2 = ColorUtils.blendARGB(themedColor, 0.05f, themedColor3);
        wikiCardView.setCardBackgroundColor(blendARGB2);
        materialButton.setBackgroundTintList(ColorStateList.valueOf(ColorUtils.blendARGB(blendARGB2, 0.05f, themedColor3)));
        materialButton.setTextColor(themedColor3);
        materialButton.setIconTint(ColorStateList.valueOf(themedColor3));
        textView.setTextColor(themedColor3);
    }
}
