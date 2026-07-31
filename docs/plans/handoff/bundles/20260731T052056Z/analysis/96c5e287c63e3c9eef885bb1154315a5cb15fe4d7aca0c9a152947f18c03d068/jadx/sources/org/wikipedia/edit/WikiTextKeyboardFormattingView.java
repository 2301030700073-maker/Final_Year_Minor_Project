package org.wikipedia.edit;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputConnection;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.edit.WikiTextKeyboardView;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.views.WikitextKeyboardButtonView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "callback", "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "getCallback", "()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "setCallback", "(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "editText", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "getEditText", "()Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "setEditText", "(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikiTextKeyboardFormattingView extends FrameLayout {
    public WikiTextKeyboardView.Callback callback;
    public SyntaxHighlightableEditText editText;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiTextKeyboardFormattingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(getContext()).inflate(R.layout.view_wikitext_keyboard_formatting, this);
        int i = R.id.close_button;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.close_button);
        if (imageView != null) {
            i = R.id.wiki_text_keyboard_formatting_horizontal_scroll_view;
            if (((HorizontalScrollView) Room.findChildViewById(this, R.id.wiki_text_keyboard_formatting_horizontal_scroll_view)) != null) {
                i = R.id.wikitext_button_bold;
                WikitextKeyboardButtonView wikitextKeyboardButtonView = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_bold);
                if (wikitextKeyboardButtonView != null) {
                    i = R.id.wikitext_button_code;
                    WikitextKeyboardButtonView wikitextKeyboardButtonView2 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_code);
                    if (wikitextKeyboardButtonView2 != null) {
                        i = R.id.wikitext_button_italic;
                        WikitextKeyboardButtonView wikitextKeyboardButtonView3 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_italic);
                        if (wikitextKeyboardButtonView3 != null) {
                            i = R.id.wikitext_button_strikethrough;
                            WikitextKeyboardButtonView wikitextKeyboardButtonView4 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_strikethrough);
                            if (wikitextKeyboardButtonView4 != null) {
                                i = R.id.wikitext_button_sub;
                                WikitextKeyboardButtonView wikitextKeyboardButtonView5 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_sub);
                                if (wikitextKeyboardButtonView5 != null) {
                                    i = R.id.wikitext_button_sup;
                                    WikitextKeyboardButtonView wikitextKeyboardButtonView6 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_sup);
                                    if (wikitextKeyboardButtonView6 != null) {
                                        i = R.id.wikitext_button_text_large;
                                        WikitextKeyboardButtonView wikitextKeyboardButtonView7 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_text_large);
                                        if (wikitextKeyboardButtonView7 != null) {
                                            i = R.id.wikitext_button_text_small;
                                            WikitextKeyboardButtonView wikitextKeyboardButtonView8 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_text_small);
                                            if (wikitextKeyboardButtonView8 != null) {
                                                i = R.id.wikitext_button_underline;
                                                WikitextKeyboardButtonView wikitextKeyboardButtonView9 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_underline);
                                                if (wikitextKeyboardButtonView9 != null) {
                                                    final int i2 = 0;
                                                    imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i3 = i2;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i3) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i4 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i5 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i6 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i7 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i8 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i3 = 1;
                                                    View view = new View[]{imageView}[0];
                                                    RegexKt.setTooltipText(view, view.getContentDescription());
                                                    wikitextKeyboardButtonView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i3;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i4 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i5 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i6 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i7 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i8 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i4 = 2;
                                                    wikitextKeyboardButtonView3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i4;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i5 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i6 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i7 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i8 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i5 = 3;
                                                    wikitextKeyboardButtonView9.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i5;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i6 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i7 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i8 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i6 = 4;
                                                    wikitextKeyboardButtonView4.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i6;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i62 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i7 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i8 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i7 = 5;
                                                    wikitextKeyboardButtonView6.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i7;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i62 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i72 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i8 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i8 = 6;
                                                    wikitextKeyboardButtonView5.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i8;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i62 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i72 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i82 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i9 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i9 = 7;
                                                    wikitextKeyboardButtonView7.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i9;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i62 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i72 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i82 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i92 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i10 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i10 = 8;
                                                    wikitextKeyboardButtonView8.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i10;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i62 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i72 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i82 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i92 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i102 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i11 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                    final int i11 = 9;
                                                    wikitextKeyboardButtonView2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ WikiTextKeyboardFormattingView f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view2) {
                                                            InputConnection inputConnection;
                                                            InputConnection inputConnection2;
                                                            InputConnection inputConnection3;
                                                            InputConnection inputConnection4;
                                                            InputConnection inputConnection5;
                                                            InputConnection inputConnection6;
                                                            InputConnection inputConnection7;
                                                            InputConnection inputConnection8;
                                                            InputConnection inputConnection9;
                                                            int i32 = i11;
                                                            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    WikiTextKeyboardView.Callback callback = wikiTextKeyboardFormattingView.callback;
                                                                    if (callback != null) {
                                                                        ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                                        int i42 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection, "'''", "'''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                                        int i52 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection2, "''", "''");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 3:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                                        int i62 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection3, "<u>", "</u>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 4:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                                        int i72 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection4, "<s>", "</s>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 5:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText5 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText5 != null && (inputConnection5 = syntaxHighlightableEditText5.getInputConnection()) != null) {
                                                                        int i82 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection5, "<sup>", "</sup>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 6:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText6 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText6 != null && (inputConnection6 = syntaxHighlightableEditText6.getInputConnection()) != null) {
                                                                        int i92 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection6, "<sub>", "</sub>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 7:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText7 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText7 != null && (inputConnection7 = syntaxHighlightableEditText7.getInputConnection()) != null) {
                                                                        int i102 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection7, "<big>", "</big>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 8:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText8 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText8 != null && (inputConnection8 = syntaxHighlightableEditText8.getInputConnection()) != null) {
                                                                        int i112 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection8, "<small>", "</small>");
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    SyntaxHighlightableEditText syntaxHighlightableEditText9 = wikiTextKeyboardFormattingView.editText;
                                                                    if (syntaxHighlightableEditText9 != null && (inputConnection9 = syntaxHighlightableEditText9.getInputConnection()) != null) {
                                                                        int i12 = WikiTextKeyboardView.$r8$clinit;
                                                                        ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardFormattingView.editText, inputConnection9, "<code>", "</code>");
                                                                        break;
                                                                    }
                                                                    break;
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
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final WikiTextKeyboardView.Callback getCallback() {
        return this.callback;
    }

    public final SyntaxHighlightableEditText getEditText() {
        return this.editText;
    }

    public final void setCallback(WikiTextKeyboardView.Callback callback) {
        this.callback = callback;
    }

    public final void setEditText(SyntaxHighlightableEditText syntaxHighlightableEditText) {
        this.editText = syntaxHighlightableEditText;
    }
}
