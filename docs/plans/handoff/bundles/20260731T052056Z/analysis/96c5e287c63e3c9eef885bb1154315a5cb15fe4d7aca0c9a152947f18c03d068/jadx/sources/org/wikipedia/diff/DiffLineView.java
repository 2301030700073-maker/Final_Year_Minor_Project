package org.wikipedia.diff;

import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.dataclient.restbase.DiffResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DiffLineView extends ConstraintLayout {
    public final DefaultSocket binding;
    public DiffUtil$DiffLine diffLine;

    public DiffLineView(Context context) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.item_diff_line, this);
        int i = R.id.collapseExpandButton;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.collapseExpandButton);
        if (imageView != null) {
            i = R.id.diffDivider;
            View findChildViewById = Room.findChildViewById(this, R.id.diffDivider);
            if (findChildViewById != null) {
                i = R.id.diffLineNumContainer;
                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.diffLineNumContainer);
                if (linearLayout != null) {
                    i = R.id.diffLineNumText;
                    TextView textView = (TextView) Room.findChildViewById(this, R.id.diffLineNumText);
                    if (textView != null) {
                        i = R.id.diffText;
                        TextView textView2 = (TextView) Room.findChildViewById(this, R.id.diffText);
                        if (textView2 != null) {
                            this.binding = new DefaultSocket(this, imageView, findChildViewById, linearLayout, textView, textView2);
                            setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                            linearLayout.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(0, this));
                            return;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public static final void _init_$lambda$0(DiffLineView diffLineView) {
        if (diffLineView.diffLine != null) {
            diffLineView.setExpanded(!r0.expanded);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("diffLine");
            throw null;
        }
    }

    private final void setExpanded(boolean z) {
        DiffUtil$DiffLine diffUtil$DiffLine = this.diffLine;
        if (diffUtil$DiffLine == null) {
            Intrinsics.throwUninitializedPropertyAccessException("diffLine");
            throw null;
        }
        diffUtil$DiffLine.expanded = z;
        DefaultSocket defaultSocket = this.binding;
        if (z) {
            ((TextView) defaultSocket.sink).setVisibility(0);
            ((ImageView) defaultSocket.socket).setImageResource(R.drawable.ic_arrow_down_24);
        } else {
            ((TextView) defaultSocket.sink).setVisibility(8);
            ((ImageView) defaultSocket.socket).setImageResource(R.drawable.ic_chevron_forward_white_24dp);
        }
    }

    public final void setItem(DiffUtil$DiffLine diffUtil$DiffLine) {
        String string;
        TypedValue typedValue;
        diffUtil$DiffLine.getClass();
        this.diffLine = diffUtil$DiffLine;
        DiffResponse.DiffItem diffItem = diffUtil$DiffLine.diff;
        int i = diffItem.type;
        DefaultSocket defaultSocket = this.binding;
        if (i == 4) {
            ((TextView) defaultSocket.source).setText(getContext().getString(R.string.revision_diff_paragraph_removed));
        } else if (i == 5) {
            ((TextView) defaultSocket.source).setText(getContext().getString(R.string.revision_diff_paragraph_added));
        } else {
            int i2 = diffItem.lineNumber;
            if (i2 < 0 && i == 1) {
                ((TextView) defaultSocket.source).setText(getContext().getString(R.string.revision_diff_line_added));
            } else if (i2 >= 0 || i != 2) {
                TextView textView = (TextView) defaultSocket.source;
                if (diffUtil$DiffLine.lineStart == diffUtil$DiffLine.lineEnd) {
                    Context context = getContext();
                    DiffUtil$DiffLine diffUtil$DiffLine2 = this.diffLine;
                    if (diffUtil$DiffLine2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("diffLine");
                        throw null;
                    }
                    string = context.getString(R.string.revision_diff_line_num, Integer.valueOf(diffUtil$DiffLine2.diff.lineNumber));
                } else {
                    Context context2 = getContext();
                    DiffUtil$DiffLine diffUtil$DiffLine3 = this.diffLine;
                    if (diffUtil$DiffLine3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("diffLine");
                        throw null;
                    }
                    Integer valueOf = Integer.valueOf(diffUtil$DiffLine3.lineStart);
                    DiffUtil$DiffLine diffUtil$DiffLine4 = this.diffLine;
                    if (diffUtil$DiffLine4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("diffLine");
                        throw null;
                    }
                    string = context2.getString(R.string.revision_diff_lines_from_to, valueOf, Integer.valueOf(diffUtil$DiffLine4.lineEnd));
                }
                textView.setText(string);
            } else {
                ((TextView) defaultSocket.source).setText(getContext().getString(R.string.revision_diff_line_removed));
            }
        }
        TextView textView2 = (TextView) defaultSocket.sink;
        DiffUtil$DiffLine diffUtil$DiffLine5 = this.diffLine;
        if (diffUtil$DiffLine5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("diffLine");
            throw null;
        }
        textView2.setText(diffUtil$DiffLine5.parsedText);
        DiffUtil$DiffLine diffUtil$DiffLine6 = this.diffLine;
        if (diffUtil$DiffLine6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("diffLine");
            throw null;
        }
        int i3 = diffUtil$DiffLine6.diff.type;
        TextView textView3 = (TextView) defaultSocket.source;
        if (i3 == 0) {
            Context context3 = getContext();
            TypedValue m = ViewSizeResolver$CC.m(context3);
            typedValue = context3.getTheme().resolveAttribute(R.attr.secondary_color, m, true) ? m : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
                return;
            } else {
                textView3.setTextColor(typedValue.data);
                setExpanded(false);
                return;
            }
        }
        Context context4 = getContext();
        TypedValue m2 = ViewSizeResolver$CC.m(context4);
        typedValue = context4.getTheme().resolveAttribute(R.attr.warning_color, m2, true) ? m2 : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130970319");
        } else {
            textView3.setTextColor(typedValue.data);
            setExpanded(true);
        }
    }
}
