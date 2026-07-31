package org.schabi.newpipe.ktx;

import android.animation.Animator;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextViewUtils$animateTextColor$$inlined$addListener$default$1 implements Animator.AnimatorListener {
    public final /* synthetic */ int $colorEnd$inlined;
    public final /* synthetic */ int $colorEnd$inlined$1;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ View $this_animateTextColor$inlined;
    public final /* synthetic */ View $this_animateTextColor$inlined$1;

    public TextViewUtils$animateTextColor$$inlined$addListener$default$1(int i, int i2, View view, View view2) {
        this.$colorEnd$inlined = i;
        this.$this_animateTextColor$inlined = view;
        this.$colorEnd$inlined$1 = i2;
        this.$this_animateTextColor$inlined$1 = view2;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i = this.$r8$classId;
        int i2 = this.$colorEnd$inlined$1;
        View view = this.$this_animateTextColor$inlined$1;
        animator.getClass();
        switch (i) {
            case 0:
                ((TextView) view).setTextColor(i2);
                break;
            default:
                ColorStateList valueOf = ColorStateList.valueOf(i2);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                view.setBackgroundTintList(valueOf);
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.$r8$classId;
        int i2 = this.$colorEnd$inlined;
        View view = this.$this_animateTextColor$inlined;
        animator.getClass();
        switch (i) {
            case 0:
                ((TextView) view).setTextColor(i2);
                break;
            default:
                ColorStateList valueOf = ColorStateList.valueOf(i2);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                view.setBackgroundTintList(valueOf);
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        int i = this.$r8$classId;
        animator.getClass();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i = this.$r8$classId;
        animator.getClass();
    }

    public TextViewUtils$animateTextColor$$inlined$addListener$default$1(TextView textView, int i, TextView textView2, int i2) {
        this.$this_animateTextColor$inlined = textView;
        this.$colorEnd$inlined = i;
        this.$this_animateTextColor$inlined$1 = textView2;
        this.$colorEnd$inlined$1 = i2;
    }
}
