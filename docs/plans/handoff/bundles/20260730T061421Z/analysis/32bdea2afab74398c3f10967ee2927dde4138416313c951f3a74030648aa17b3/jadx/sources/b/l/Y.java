package b.l;

import android.widget.SeekBar;
import androidx.preference.SeekBarPreference;

/* loaded from: classes.dex */
public class Y implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SeekBarPreference f1053a;

    public Y(SeekBarPreference seekBarPreference) {
        this.f1053a = seekBarPreference;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            SeekBarPreference seekBarPreference = this.f1053a;
            if (seekBarPreference.j || !seekBarPreference.e) {
                SeekBarPreference seekBarPreference2 = this.f1053a;
                int progress = seekBar.getProgress() + seekBarPreference2.f168b;
                if (progress != seekBarPreference2.f167a) {
                    seekBarPreference2.e(progress, false);
                    return;
                }
                return;
            }
        }
        SeekBarPreference seekBarPreference3 = this.f1053a;
        seekBarPreference3.g(i + seekBarPreference3.f168b);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f1053a.e = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        int progress;
        this.f1053a.e = false;
        int progress2 = seekBar.getProgress();
        SeekBarPreference seekBarPreference = this.f1053a;
        int i = seekBarPreference.f168b;
        if (progress2 + i == seekBarPreference.f167a || (progress = seekBar.getProgress() + i) == seekBarPreference.f167a) {
            return;
        }
        seekBarPreference.e(progress, false);
    }
}
