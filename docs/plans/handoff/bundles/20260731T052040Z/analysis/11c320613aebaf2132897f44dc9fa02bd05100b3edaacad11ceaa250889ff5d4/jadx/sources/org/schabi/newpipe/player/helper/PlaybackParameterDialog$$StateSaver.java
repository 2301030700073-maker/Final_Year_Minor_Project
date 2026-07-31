package org.schabi.newpipe.player.helper;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.HashMap;
import org.schabi.newpipe.player.helper.PlaybackParameterDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class PlaybackParameterDialog$$StateSaver<T extends PlaybackParameterDialog> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.player.helper.PlaybackParameterDialog$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        t.initialPitchPercent = injectionHelper.getDouble(bundle, "initialPitchPercent");
        t.initialSkipSilence = injectionHelper.getBoolean(bundle, "initialSkipSilence");
        t.initialTempo = injectionHelper.getDouble(bundle, "initialTempo");
        t.pitchPercent = injectionHelper.getDouble(bundle, "pitchPercent");
        t.skipSilence = injectionHelper.getBoolean(bundle, "skipSilence");
        t.tempo = injectionHelper.getDouble(bundle, "tempo");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putDouble(bundle, "initialPitchPercent", t.initialPitchPercent);
        injectionHelper.putBoolean(bundle, "initialSkipSilence", t.initialSkipSilence);
        injectionHelper.putDouble(bundle, "initialTempo", t.initialTempo);
        injectionHelper.putDouble(bundle, "pitchPercent", t.pitchPercent);
        injectionHelper.putBoolean(bundle, "skipSilence", t.skipSilence);
        injectionHelper.putDouble(bundle, "tempo", t.tempo);
    }
}
