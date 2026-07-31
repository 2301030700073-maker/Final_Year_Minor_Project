package org.wikipedia.suggestededits;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "org/wikipedia/suggestededits/SuggestedEditsImageRecsFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsImageRecsDialog extends DialogFragment {
    public Request.Builder _binding;
    public final Chip$$ExternalSyntheticLambda0 checkBoxChangedHandler = new Chip$$ExternalSyntheticLambda0(5, this);
    public CheckBox[] checkboxes;
    public AlertDialog dialog;

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        requireArguments().getInt("response");
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.fragment_suggested_edits_image_recs_dialog, (ViewGroup) null, false);
        int i2 = R.id.checkBox1;
        MaterialCheckBox materialCheckBox = (MaterialCheckBox) Room.findChildViewById(inflate, R.id.checkBox1);
        if (materialCheckBox != null) {
            i2 = R.id.checkBox2;
            MaterialCheckBox materialCheckBox2 = (MaterialCheckBox) Room.findChildViewById(inflate, R.id.checkBox2);
            if (materialCheckBox2 != null) {
                i2 = R.id.checkBox3;
                MaterialCheckBox materialCheckBox3 = (MaterialCheckBox) Room.findChildViewById(inflate, R.id.checkBox3);
                if (materialCheckBox3 != null) {
                    i2 = R.id.checkBox4;
                    MaterialCheckBox materialCheckBox4 = (MaterialCheckBox) Room.findChildViewById(inflate, R.id.checkBox4);
                    if (materialCheckBox4 != null) {
                        i2 = R.id.checkBox5;
                        MaterialCheckBox materialCheckBox5 = (MaterialCheckBox) Room.findChildViewById(inflate, R.id.checkBox5);
                        if (materialCheckBox5 != null) {
                            i2 = R.id.checkBox6;
                            MaterialCheckBox materialCheckBox6 = (MaterialCheckBox) Room.findChildViewById(inflate, R.id.checkBox6);
                            if (materialCheckBox6 != null) {
                                i2 = R.id.imageRecommendationDialogContainer;
                                if (((LinearLayout) Room.findChildViewById(inflate, R.id.imageRecommendationDialogContainer)) != null) {
                                    i2 = R.id.instructionSubText;
                                    if (((TextView) Room.findChildViewById(inflate, R.id.instructionSubText)) != null) {
                                        Request.Builder builder = new Request.Builder();
                                        builder.url = (ScrollView) inflate;
                                        builder.method = materialCheckBox3;
                                        builder.headers = materialCheckBox4;
                                        builder.body = materialCheckBox5;
                                        builder.tags = materialCheckBox6;
                                        this._binding = builder;
                                        Request.Builder builder2 = this._binding;
                                        builder2.getClass();
                                        MaterialCheckBox materialCheckBox7 = (MaterialCheckBox) builder2.method;
                                        Request.Builder builder3 = this._binding;
                                        builder3.getClass();
                                        MaterialCheckBox materialCheckBox8 = (MaterialCheckBox) builder3.headers;
                                        Request.Builder builder4 = this._binding;
                                        builder4.getClass();
                                        MaterialCheckBox materialCheckBox9 = (MaterialCheckBox) builder4.body;
                                        Request.Builder builder5 = this._binding;
                                        builder5.getClass();
                                        final int i3 = 1;
                                        CheckBox[] checkBoxArr = {materialCheckBox, materialCheckBox2, materialCheckBox7, materialCheckBox8, materialCheckBox9, (MaterialCheckBox) builder5.tags};
                                        this.checkboxes = checkBoxArr;
                                        for (int i4 = 0; i4 < 6; i4++) {
                                            checkBoxArr[i4].setOnCheckedChangeListener(this.checkBoxChangedHandler);
                                        }
                                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity(), 0);
                                        Request.Builder builder6 = this._binding;
                                        builder6.getClass();
                                        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = (ScrollView) builder6.url;
                                        materialAlertDialogBuilder.setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsDialog$$ExternalSyntheticLambda1
                                            public final /* synthetic */ SuggestedEditsImageRecsDialog f$0;

                                            {
                                                this.f$0 = this;
                                            }

                                            @Override // android.content.DialogInterface.OnClickListener
                                            public final void onClick(DialogInterface dialogInterface, int i5) {
                                                ComponentCallbacks activity;
                                                int i6 = i;
                                                SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = this.f$0;
                                                switch (i6) {
                                                    case 0:
                                                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                                        ImageRecommendationsEvent.Companion.logAction$default(companion, "reject_cancel", "rejection_dialog", ImageRecommendationsEvent.Companion.getActionDataString$default(companion, null, null, null, null, "rejected", null, null, null, false, 495), 8);
                                                        suggestedEditsImageRecsDialog.dismissInternal(false, false);
                                                        return;
                                                    default:
                                                        CheckBox[] checkBoxArr2 = suggestedEditsImageRecsDialog.checkboxes;
                                                        if (checkBoxArr2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("checkboxes");
                                                            throw null;
                                                        }
                                                        ArrayList arrayList = new ArrayList();
                                                        int length = checkBoxArr2.length;
                                                        int i7 = 0;
                                                        int i8 = 0;
                                                        while (i7 < length) {
                                                            int i9 = i8 + 1;
                                                            Integer valueOf = checkBoxArr2[i7].isChecked() ? Integer.valueOf(i8) : null;
                                                            if (valueOf != null) {
                                                                arrayList.add(valueOf);
                                                            }
                                                            i7++;
                                                            i8 = i9;
                                                        }
                                                        if (SuggestedEditsImageRecsFragment.class.isInstance(suggestedEditsImageRecsDialog.getTargetFragment(true))) {
                                                            activity = suggestedEditsImageRecsDialog.getTargetFragment(true);
                                                        } else {
                                                            Fragment fragment = suggestedEditsImageRecsDialog.mParentFragment;
                                                            if (fragment != null) {
                                                                if (SuggestedEditsImageRecsFragment.class.isInstance(fragment)) {
                                                                    activity = suggestedEditsImageRecsDialog.mParentFragment;
                                                                } else if (SuggestedEditsImageRecsFragment.class.isInstance(suggestedEditsImageRecsDialog.requireParentFragment().mParentFragment)) {
                                                                    activity = suggestedEditsImageRecsDialog.requireParentFragment().mParentFragment;
                                                                }
                                                            }
                                                            activity = SuggestedEditsImageRecsFragment.class.isInstance(suggestedEditsImageRecsDialog.getActivity()) ? suggestedEditsImageRecsDialog.getActivity() : null;
                                                        }
                                                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) activity;
                                                        if (suggestedEditsImageRecsFragment != null) {
                                                            SuggestedEditsImageRecsFragmentViewModel viewModel = suggestedEditsImageRecsFragment.getViewModel();
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new TalkReplyViewModel$loadTemplates$2(viewModel, arrayList, (Continuation) null), 2);
                                                            ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                int intValue = ((Number) it.next()).intValue();
                                                                ImageRecommendationsEvent.Companion.getClass();
                                                                arrayList2.add((String) CollectionsKt.getOrNull(ImageRecommendationsEvent.reasons, intValue));
                                                            }
                                                            String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", arrayList2.toString(), null, 12);
                                                            String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                                                            companion2.getClass();
                                                            ImageRecommendationsEvent.Companion.logAction("reject_submit", "rejection_dialog", actionStringForAnalytics$default, str);
                                                            suggestedEditsImageRecsFragment.publish();
                                                        }
                                                        suggestedEditsImageRecsDialog.dismissInternal(false, false);
                                                        return;
                                                }
                                            }
                                        });
                                        materialAlertDialogBuilder.setPositiveButton(R.string.image_recommendation_reject_submit, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsDialog$$ExternalSyntheticLambda1
                                            public final /* synthetic */ SuggestedEditsImageRecsDialog f$0;

                                            {
                                                this.f$0 = this;
                                            }

                                            @Override // android.content.DialogInterface.OnClickListener
                                            public final void onClick(DialogInterface dialogInterface, int i5) {
                                                ComponentCallbacks activity;
                                                int i6 = i3;
                                                SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = this.f$0;
                                                switch (i6) {
                                                    case 0:
                                                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                                        ImageRecommendationsEvent.Companion.logAction$default(companion, "reject_cancel", "rejection_dialog", ImageRecommendationsEvent.Companion.getActionDataString$default(companion, null, null, null, null, "rejected", null, null, null, false, 495), 8);
                                                        suggestedEditsImageRecsDialog.dismissInternal(false, false);
                                                        return;
                                                    default:
                                                        CheckBox[] checkBoxArr2 = suggestedEditsImageRecsDialog.checkboxes;
                                                        if (checkBoxArr2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("checkboxes");
                                                            throw null;
                                                        }
                                                        ArrayList arrayList = new ArrayList();
                                                        int length = checkBoxArr2.length;
                                                        int i7 = 0;
                                                        int i8 = 0;
                                                        while (i7 < length) {
                                                            int i9 = i8 + 1;
                                                            Integer valueOf = checkBoxArr2[i7].isChecked() ? Integer.valueOf(i8) : null;
                                                            if (valueOf != null) {
                                                                arrayList.add(valueOf);
                                                            }
                                                            i7++;
                                                            i8 = i9;
                                                        }
                                                        if (SuggestedEditsImageRecsFragment.class.isInstance(suggestedEditsImageRecsDialog.getTargetFragment(true))) {
                                                            activity = suggestedEditsImageRecsDialog.getTargetFragment(true);
                                                        } else {
                                                            Fragment fragment = suggestedEditsImageRecsDialog.mParentFragment;
                                                            if (fragment != null) {
                                                                if (SuggestedEditsImageRecsFragment.class.isInstance(fragment)) {
                                                                    activity = suggestedEditsImageRecsDialog.mParentFragment;
                                                                } else if (SuggestedEditsImageRecsFragment.class.isInstance(suggestedEditsImageRecsDialog.requireParentFragment().mParentFragment)) {
                                                                    activity = suggestedEditsImageRecsDialog.requireParentFragment().mParentFragment;
                                                                }
                                                            }
                                                            activity = SuggestedEditsImageRecsFragment.class.isInstance(suggestedEditsImageRecsDialog.getActivity()) ? suggestedEditsImageRecsDialog.getActivity() : null;
                                                        }
                                                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) activity;
                                                        if (suggestedEditsImageRecsFragment != null) {
                                                            SuggestedEditsImageRecsFragmentViewModel viewModel = suggestedEditsImageRecsFragment.getViewModel();
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new TalkReplyViewModel$loadTemplates$2(viewModel, arrayList, (Continuation) null), 2);
                                                            ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                int intValue = ((Number) it.next()).intValue();
                                                                ImageRecommendationsEvent.Companion.getClass();
                                                                arrayList2.add((String) CollectionsKt.getOrNull(ImageRecommendationsEvent.reasons, intValue));
                                                            }
                                                            String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", arrayList2.toString(), null, 12);
                                                            String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                                                            companion2.getClass();
                                                            ImageRecommendationsEvent.Companion.logAction("reject_submit", "rejection_dialog", actionStringForAnalytics$default, str);
                                                            suggestedEditsImageRecsFragment.publish();
                                                        }
                                                        suggestedEditsImageRecsDialog.dismissInternal(false, false);
                                                        return;
                                                }
                                            }
                                        });
                                        materialAlertDialogBuilder.setTitle(R.string.image_recommendation_reject_title);
                                        this.dialog = materialAlertDialogBuilder.create();
                                        ImageRecommendationsEvent.Companion.logImpression$default(ImageRecommendationsEvent.Companion, "rejection_dialog", null, 6);
                                        AlertDialog alertDialog = this.dialog;
                                        alertDialog.getClass();
                                        return alertDialog;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        updateSubmitState();
    }

    public final void updateSubmitState() {
        Button button;
        Button button2;
        CheckBox[] checkBoxArr = this.checkboxes;
        if (checkBoxArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkboxes");
            throw null;
        }
        int length = checkBoxArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (checkBoxArr[i].isChecked()) {
                z = true;
                break;
            }
            i++;
        }
        AlertDialog alertDialog = this.dialog;
        if (alertDialog != null && (button2 = alertDialog.mAlert.mButtonPositive) != null) {
            button2.setEnabled(z);
        }
        AlertDialog alertDialog2 = this.dialog;
        if (alertDialog2 == null || (button = alertDialog2.mAlert.mButtonPositive) == null) {
            return;
        }
        button.setAlpha(z ? 1.0f : 0.5f);
    }
}
