package org.wikipedia.edit;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.room.Room;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.R$styleable;
import org.wikipedia.views.WikitextKeyboardButtonView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lorg/wikipedia/edit/WikiTextKeyboardView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "callback", "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "getCallback", "()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;", "setCallback", "(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "editText", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "getEditText", "()Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "setEditText", "(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V", "", "value", "getUserMentionVisible", "()Z", "setUserMentionVisible", "(Z)V", "userMentionVisible", "Callback", "MultiSelectCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikiTextKeyboardView extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final MultipartBody.Builder binding;
    public Callback callback;
    public SyntaxHighlightableEditText editText;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiTextKeyboardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        WikitextKeyboardButtonView wikitextKeyboardButtonView;
        WikitextKeyboardButtonView wikitextKeyboardButtonView2;
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_wikitext_keyboard, this);
        int i = R.id.wikitext_button_heading;
        WikitextKeyboardButtonView wikitextKeyboardButtonView3 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_heading);
        if (wikitextKeyboardButtonView3 != null) {
            i = R.id.wikitext_button_insert_media;
            WikitextKeyboardButtonView wikitextKeyboardButtonView4 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_insert_media);
            if (wikitextKeyboardButtonView4 != null) {
                i = R.id.wikitext_button_link;
                WikitextKeyboardButtonView wikitextKeyboardButtonView5 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_link);
                if (wikitextKeyboardButtonView5 != null) {
                    i = R.id.wikitext_button_list_bulleted;
                    WikitextKeyboardButtonView wikitextKeyboardButtonView6 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_list_bulleted);
                    if (wikitextKeyboardButtonView6 != null) {
                        i = R.id.wikitext_button_list_numbered;
                        WikitextKeyboardButtonView wikitextKeyboardButtonView7 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_list_numbered);
                        if (wikitextKeyboardButtonView7 != null) {
                            i = R.id.wikitext_button_preview_link;
                            WikitextKeyboardButtonView wikitextKeyboardButtonView8 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_preview_link);
                            if (wikitextKeyboardButtonView8 != null) {
                                i = R.id.wikitext_button_redo;
                                WikitextKeyboardButtonView wikitextKeyboardButtonView9 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_redo);
                                if (wikitextKeyboardButtonView9 != null) {
                                    i = R.id.wikitext_button_ref;
                                    WikitextKeyboardButtonView wikitextKeyboardButtonView10 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_ref);
                                    if (wikitextKeyboardButtonView10 != null) {
                                        i = R.id.wikitext_button_template;
                                        WikitextKeyboardButtonView wikitextKeyboardButtonView11 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_template);
                                        if (wikitextKeyboardButtonView11 != null) {
                                            i = R.id.wikitext_button_text_format;
                                            WikitextKeyboardButtonView wikitextKeyboardButtonView12 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_text_format);
                                            if (wikitextKeyboardButtonView12 != null) {
                                                i = R.id.wikitext_button_undo;
                                                WikitextKeyboardButtonView wikitextKeyboardButtonView13 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_undo);
                                                if (wikitextKeyboardButtonView13 != null) {
                                                    i = R.id.wikitext_button_user_mention;
                                                    WikitextKeyboardButtonView wikitextKeyboardButtonView14 = (WikitextKeyboardButtonView) Room.findChildViewById(this, R.id.wikitext_button_user_mention);
                                                    if (wikitextKeyboardButtonView14 != null) {
                                                        i = R.id.wikitext_keyboard_container;
                                                        if (((LinearLayout) Room.findChildViewById(this, R.id.wikitext_keyboard_container)) != null) {
                                                            MultipartBody.Builder builder = new MultipartBody.Builder();
                                                            builder.boundary = wikitextKeyboardButtonView3;
                                                            builder.type = wikitextKeyboardButtonView12;
                                                            builder.parts = wikitextKeyboardButtonView14;
                                                            this.binding = builder;
                                                            final int i2 = 1;
                                                            final int i3 = 0;
                                                            if (attributeSet != null) {
                                                                wikitextKeyboardButtonView2 = wikitextKeyboardButtonView14;
                                                                wikitextKeyboardButtonView = wikitextKeyboardButtonView8;
                                                                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WikitextKeyboardView, 0, 0);
                                                                wikitextKeyboardButtonView3.setVisibility(obtainStyledAttributes.getBoolean(0, true) ? 0 : 8);
                                                                obtainStyledAttributes.recycle();
                                                            } else {
                                                                wikitextKeyboardButtonView = wikitextKeyboardButtonView8;
                                                                wikitextKeyboardButtonView2 = wikitextKeyboardButtonView14;
                                                            }
                                                            wikitextKeyboardButtonView13.setVisibility(0);
                                                            wikitextKeyboardButtonView9.setVisibility(0);
                                                            wikitextKeyboardButtonView12.setExpandable(true);
                                                            wikitextKeyboardButtonView3.setExpandable(true);
                                                            wikitextKeyboardButtonView5.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                /* JADX WARN: Code restructure failed: missing block: B:162:0x02c5, code lost:
                                                                
                                                                    if (r13.length() != 0) goto L142;
                                                                 */
                                                                @Override // android.view.View.OnClickListener
                                                                /*
                                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                                    To view partially-correct add '--show-bad-code' argument
                                                                */
                                                                public final void onClick(android.view.View r13) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i4 = 5;
                                                            wikitextKeyboardButtonView12.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i5 = 6;
                                                            wikitextKeyboardButtonView3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i6 = 7;
                                                            wikitextKeyboardButtonView11.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i7 = 8;
                                                            wikitextKeyboardButtonView10.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i8 = 9;
                                                            wikitextKeyboardButtonView6.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i9 = 10;
                                                            wikitextKeyboardButtonView7.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i10 = 11;
                                                            wikitextKeyboardButtonView4.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            wikitextKeyboardButtonView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i11 = 2;
                                                            wikitextKeyboardButtonView13.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i12 = 3;
                                                            wikitextKeyboardButtonView9.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
                                                                }
                                                            });
                                                            final int i13 = 4;
                                                            wikitextKeyboardButtonView2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0
                                                                public final /* synthetic */ WikiTextKeyboardView f$0;

                                                                {
                                                                    this.f$0 = this;
                                                                }

                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view) {
                                                                    /*
                                                                        Method dump skipped, instructions count: 887
                                                                        To view this dump add '--comments-level debug' option
                                                                    */
                                                                    throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.WikiTextKeyboardView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
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
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final SyntaxHighlightableEditText getEditText() {
        return this.editText;
    }

    public final boolean getUserMentionVisible() {
        return ((WikitextKeyboardButtonView) this.binding.parts).getVisibility() == 0;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setEditText(SyntaxHighlightableEditText syntaxHighlightableEditText) {
        this.editText = syntaxHighlightableEditText;
    }

    public final void setUserMentionVisible(boolean z) {
        ((WikitextKeyboardButtonView) this.binding.parts).setVisibility(z ? 0 : 8);
    }
}
