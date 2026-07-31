package org.wikipedia.edit;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputConnection;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.edit.WikiTextKeyboardView;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "callback", "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "getCallback", "()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "setCallback", "(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "editText", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "getEditText", "()Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "setEditText", "(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikiTextKeyboardHeadingsView extends FrameLayout {
    public WikiTextKeyboardView.Callback callback;
    public SyntaxHighlightableEditText editText;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiTextKeyboardHeadingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(getContext()).inflate(R.layout.view_wikitext_keyboard_headings, this);
        int i = R.id.closeButton;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.closeButton);
        if (imageView != null) {
            i = R.id.wikitext_button_h2;
            ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.wikitext_button_h2);
            if (imageView2 != null) {
                i = R.id.wikitext_button_h3;
                ImageView imageView3 = (ImageView) Room.findChildViewById(this, R.id.wikitext_button_h3);
                if (imageView3 != null) {
                    i = R.id.wikitext_button_h4;
                    ImageView imageView4 = (ImageView) Room.findChildViewById(this, R.id.wikitext_button_h4);
                    if (imageView4 != null) {
                        i = R.id.wikitext_button_h5;
                        ImageView imageView5 = (ImageView) Room.findChildViewById(this, R.id.wikitext_button_h5);
                        if (imageView5 != null) {
                            final int i2 = 0;
                            imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ WikiTextKeyboardHeadingsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InputConnection inputConnection;
                                    InputConnection inputConnection2;
                                    InputConnection inputConnection3;
                                    InputConnection inputConnection4;
                                    int i3 = i2;
                                    WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = this.f$0;
                                    switch (i3) {
                                        case 0:
                                            WikiTextKeyboardView.Callback callback = wikiTextKeyboardHeadingsView.callback;
                                            if (callback != null) {
                                                ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                break;
                                            }
                                            break;
                                        case 1:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                int i4 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection, "==", "==");
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                int i5 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection2, "===", "===");
                                                break;
                                            }
                                            break;
                                        case 3:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                int i6 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection3, "====", "====");
                                                break;
                                            }
                                            break;
                                        default:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                int i7 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection4, "=====", "=====");
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            final int i3 = 2;
                            final int i4 = 1;
                            imageView2.setContentDescription(getContext().getString(R.string.wikitext_heading_n, 2));
                            imageView2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ WikiTextKeyboardHeadingsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InputConnection inputConnection;
                                    InputConnection inputConnection2;
                                    InputConnection inputConnection3;
                                    InputConnection inputConnection4;
                                    int i32 = i4;
                                    WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = this.f$0;
                                    switch (i32) {
                                        case 0:
                                            WikiTextKeyboardView.Callback callback = wikiTextKeyboardHeadingsView.callback;
                                            if (callback != null) {
                                                ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                break;
                                            }
                                            break;
                                        case 1:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                int i42 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection, "==", "==");
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                int i5 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection2, "===", "===");
                                                break;
                                            }
                                            break;
                                        case 3:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                int i6 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection3, "====", "====");
                                                break;
                                            }
                                            break;
                                        default:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                int i7 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection4, "=====", "=====");
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            final int i5 = 3;
                            imageView3.setContentDescription(getContext().getString(R.string.wikitext_heading_n, 3));
                            imageView3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ WikiTextKeyboardHeadingsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InputConnection inputConnection;
                                    InputConnection inputConnection2;
                                    InputConnection inputConnection3;
                                    InputConnection inputConnection4;
                                    int i32 = i3;
                                    WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = this.f$0;
                                    switch (i32) {
                                        case 0:
                                            WikiTextKeyboardView.Callback callback = wikiTextKeyboardHeadingsView.callback;
                                            if (callback != null) {
                                                ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                break;
                                            }
                                            break;
                                        case 1:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                int i42 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection, "==", "==");
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                int i52 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection2, "===", "===");
                                                break;
                                            }
                                            break;
                                        case 3:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                int i6 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection3, "====", "====");
                                                break;
                                            }
                                            break;
                                        default:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                int i7 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection4, "=====", "=====");
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            final int i6 = 4;
                            imageView4.setContentDescription(getContext().getString(R.string.wikitext_heading_n, 4));
                            imageView4.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ WikiTextKeyboardHeadingsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InputConnection inputConnection;
                                    InputConnection inputConnection2;
                                    InputConnection inputConnection3;
                                    InputConnection inputConnection4;
                                    int i32 = i5;
                                    WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = this.f$0;
                                    switch (i32) {
                                        case 0:
                                            WikiTextKeyboardView.Callback callback = wikiTextKeyboardHeadingsView.callback;
                                            if (callback != null) {
                                                ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                break;
                                            }
                                            break;
                                        case 1:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                int i42 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection, "==", "==");
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                int i52 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection2, "===", "===");
                                                break;
                                            }
                                            break;
                                        case 3:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                int i62 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection3, "====", "====");
                                                break;
                                            }
                                            break;
                                        default:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                int i7 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection4, "=====", "=====");
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            imageView5.setContentDescription(getContext().getString(R.string.wikitext_heading_n, 5));
                            imageView5.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ WikiTextKeyboardHeadingsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InputConnection inputConnection;
                                    InputConnection inputConnection2;
                                    InputConnection inputConnection3;
                                    InputConnection inputConnection4;
                                    int i32 = i6;
                                    WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = this.f$0;
                                    switch (i32) {
                                        case 0:
                                            WikiTextKeyboardView.Callback callback = wikiTextKeyboardHeadingsView.callback;
                                            if (callback != null) {
                                                ((SyntaxHighlightViewAdapter) callback).hideAllSyntaxModals();
                                                break;
                                            }
                                            break;
                                        case 1:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText != null && (inputConnection = syntaxHighlightableEditText.getInputConnection()) != null) {
                                                int i42 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection, "==", "==");
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText2 != null && (inputConnection2 = syntaxHighlightableEditText2.getInputConnection()) != null) {
                                                int i52 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection2, "===", "===");
                                                break;
                                            }
                                            break;
                                        case 3:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText3 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText3 != null && (inputConnection3 = syntaxHighlightableEditText3.getInputConnection()) != null) {
                                                int i62 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection3, "====", "====");
                                                break;
                                            }
                                            break;
                                        default:
                                            SyntaxHighlightableEditText syntaxHighlightableEditText4 = wikiTextKeyboardHeadingsView.editText;
                                            if (syntaxHighlightableEditText4 != null && (inputConnection4 = syntaxHighlightableEditText4.getInputConnection()) != null) {
                                                int i7 = WikiTextKeyboardView.$r8$clinit;
                                                ReadingListFragment.MultiSelectCallback.toggleSyntaxAroundCurrentSelection(wikiTextKeyboardHeadingsView.editText, inputConnection4, "=====", "=====");
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            View[] viewArr = {imageView, imageView2, imageView3, imageView4, imageView5};
                            while (i2 < 5) {
                                View view = viewArr[i2];
                                RegexKt.setTooltipText(view, view.getContentDescription());
                                i2++;
                            }
                            return;
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
