package org.wikipedia.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.edit.WikiTextKeyboardFormattingView;
import org.wikipedia.edit.WikiTextKeyboardHeadingsView;
import org.wikipedia.edit.WikiTextKeyboardView;
import org.wikipedia.talk.TalkThreadItemView;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.UserMentionInputView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTalkReplyBinding {
    public final ViewGroup editKeyboardOverlay;
    public final View editKeyboardOverlayFormatting;
    public final View editKeyboardOverlayHeadings;
    public final Object footerContainer;
    public final TextView learnMoreButton;
    public final View progressBar;
    public final View replyInputView;
    public final TextView replyNextButton;
    public final View replySubjectLayout;
    public final View replySubjectText;
    public final View replyToolbar;
    public final View rootView;
    public final View talkScrollContainer;
    public final View threadItemView;

    public ActivityTalkReplyBinding(ScrollView scrollView, Button button, ScrollView scrollView2, PlainPasteEditText plainPasteEditText, TextInputLayout textInputLayout, RadioGroup radioGroup, TextView textView, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioButton radioButton4, RadioButton radioButton5, Button button2, TextView textView2) {
        this.talkScrollContainer = scrollView;
        this.rootView = button;
        this.editKeyboardOverlay = scrollView2;
        this.replySubjectText = plainPasteEditText;
        this.replySubjectLayout = textInputLayout;
        this.editKeyboardOverlayFormatting = radioGroup;
        this.learnMoreButton = textView;
        this.editKeyboardOverlayHeadings = radioButton;
        this.footerContainer = radioButton2;
        this.progressBar = radioButton3;
        this.replyInputView = radioButton4;
        this.replyToolbar = radioButton5;
        this.threadItemView = button2;
        this.replyNextButton = textView2;
    }

    public static ActivityTalkReplyBinding inflate(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.dialog_feedback_options, (ViewGroup) null, false);
        int i = R.id.cancelButton;
        Button button = (Button) Room.findChildViewById(inflate, R.id.cancelButton);
        if (button != null) {
            ScrollView scrollView = (ScrollView) inflate;
            i = R.id.feedbackInput;
            PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.feedbackInput);
            if (plainPasteEditText != null) {
                i = R.id.feedbackInputContainer;
                TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.feedbackInputContainer);
                if (textInputLayout != null) {
                    i = R.id.feedbackRadioGroup;
                    RadioGroup radioGroup = (RadioGroup) Room.findChildViewById(inflate, R.id.feedbackRadioGroup);
                    if (radioGroup != null) {
                        i = R.id.messageText;
                        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.messageText);
                        if (textView != null) {
                            i = R.id.optionNeutral;
                            RadioButton radioButton = (RadioButton) Room.findChildViewById(inflate, R.id.optionNeutral);
                            if (radioButton != null) {
                                i = R.id.optionSatisfied;
                                RadioButton radioButton2 = (RadioButton) Room.findChildViewById(inflate, R.id.optionSatisfied);
                                if (radioButton2 != null) {
                                    i = R.id.optionUnsatisfied;
                                    RadioButton radioButton3 = (RadioButton) Room.findChildViewById(inflate, R.id.optionUnsatisfied);
                                    if (radioButton3 != null) {
                                        i = R.id.optionVerySatisfied;
                                        RadioButton radioButton4 = (RadioButton) Room.findChildViewById(inflate, R.id.optionVerySatisfied);
                                        if (radioButton4 != null) {
                                            i = R.id.optionVeryUnsatisfied;
                                            RadioButton radioButton5 = (RadioButton) Room.findChildViewById(inflate, R.id.optionVeryUnsatisfied);
                                            if (radioButton5 != null) {
                                                i = R.id.optionsContainer;
                                                if (((LinearLayout) Room.findChildViewById(inflate, R.id.optionsContainer)) != null) {
                                                    i = R.id.submitButton;
                                                    Button button2 = (Button) Room.findChildViewById(inflate, R.id.submitButton);
                                                    if (button2 != null) {
                                                        i = R.id.titleText;
                                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.titleText);
                                                        if (textView2 != null) {
                                                            return new ActivityTalkReplyBinding(scrollView, button, scrollView, plainPasteEditText, textInputLayout, radioGroup, textView, radioButton, radioButton2, radioButton3, radioButton4, radioButton5, button2, textView2);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    public ActivityTalkReplyBinding(FrameLayout frameLayout, WikiErrorView wikiErrorView, ProgressBar progressBar, ConstraintLayout constraintLayout, TextView textView, ImageView imageView, FrameLayout frameLayout2, ProgressBar progressBar2, ProgressBar progressBar3, ImageView imageView2, TextView textView2, FlexboxLayout flexboxLayout, LinearLayout linearLayout, TextView textView3, TextView textView4) {
        this.editKeyboardOverlay = wikiErrorView;
        this.editKeyboardOverlayFormatting = progressBar;
        this.editKeyboardOverlayHeadings = constraintLayout;
        this.learnMoreButton = textView;
        this.footerContainer = imageView;
        this.rootView = frameLayout2;
        this.progressBar = progressBar2;
        this.replyInputView = progressBar3;
        this.replySubjectLayout = imageView2;
        this.replyNextButton = textView2;
        this.replySubjectText = flexboxLayout;
        this.replyToolbar = linearLayout;
        this.talkScrollContainer = textView3;
        this.threadItemView = textView4;
    }

    public ActivityTalkReplyBinding(FrameLayout frameLayout, WikiTextKeyboardView wikiTextKeyboardView, WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView, WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView, ViewCustomCalendarDayBinding viewCustomCalendarDayBinding, TextView textView, LinearProgressIndicator linearProgressIndicator, UserMentionInputView userMentionInputView, TextView textView2, TextInputLayout textInputLayout, PlainPasteEditText plainPasteEditText, MaterialToolbar materialToolbar, ScrollView scrollView, TalkThreadItemView talkThreadItemView) {
        this.rootView = frameLayout;
        this.editKeyboardOverlay = wikiTextKeyboardView;
        this.editKeyboardOverlayFormatting = wikiTextKeyboardFormattingView;
        this.editKeyboardOverlayHeadings = wikiTextKeyboardHeadingsView;
        this.footerContainer = viewCustomCalendarDayBinding;
        this.learnMoreButton = textView;
        this.progressBar = linearProgressIndicator;
        this.replyInputView = userMentionInputView;
        this.replyNextButton = textView2;
        this.replySubjectLayout = textInputLayout;
        this.replySubjectText = plainPasteEditText;
        this.replyToolbar = materialToolbar;
        this.talkScrollContainer = scrollView;
        this.threadItemView = talkThreadItemView;
    }
}
