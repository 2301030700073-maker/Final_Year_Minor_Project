package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputLayout;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DialogFeedGroupCreateBinding implements ViewBinding {
    public final Button cancelButton;
    public final Button confirmButton;
    public final ImageButton deleteButton;
    public final NewPipeTextView deleteScreenMessage;
    public final NewPipeEditText groupNameInput;
    public final TextInputLayout groupNameInputContainer;
    public final ImageButton iconPreview;
    public final RecyclerView iconSelector;
    public final ConstraintLayout optionsRoot;
    public final LinearLayout rootView;
    public final Button selectChannelButton;
    public final NewPipeTextView selectedSubscriptionCountView;
    public final View separator;
    public final NewPipeTextView subscriptionsHeaderInfo;
    public final LinearLayout subscriptionsHeaderInfoContainer;
    public final Toolbar subscriptionsHeaderToolbar;
    public final LinearLayout subscriptionsSelector;
    public final RecyclerView subscriptionsSelectorList;

    public DialogFeedGroupCreateBinding(LinearLayout linearLayout, Button button, Button button2, ImageButton imageButton, NewPipeTextView newPipeTextView, NewPipeEditText newPipeEditText, TextInputLayout textInputLayout, ImageButton imageButton2, RecyclerView recyclerView, ConstraintLayout constraintLayout, Button button3, NewPipeTextView newPipeTextView2, View view, NewPipeTextView newPipeTextView3, LinearLayout linearLayout2, Printer printer, Toolbar toolbar, LinearLayout linearLayout3, RecyclerView recyclerView2) {
        this.rootView = linearLayout;
        this.cancelButton = button;
        this.confirmButton = button2;
        this.deleteButton = imageButton;
        this.deleteScreenMessage = newPipeTextView;
        this.groupNameInput = newPipeEditText;
        this.groupNameInputContainer = textInputLayout;
        this.iconPreview = imageButton2;
        this.iconSelector = recyclerView;
        this.optionsRoot = constraintLayout;
        this.selectChannelButton = button3;
        this.selectedSubscriptionCountView = newPipeTextView2;
        this.separator = view;
        this.subscriptionsHeaderInfo = newPipeTextView3;
        this.subscriptionsHeaderInfoContainer = linearLayout2;
        this.subscriptionsHeaderToolbar = toolbar;
        this.subscriptionsSelector = linearLayout3;
        this.subscriptionsSelectorList = recyclerView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
