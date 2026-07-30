package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes4.dex */
final class zzad extends zzos {
    private String zza;
    private Set zzb;
    private Map zzc;
    private Long zzd;
    private Long zze;

    zzad(zzpg zzpgVar) {
        super(zzpgVar);
    }

    private final zzy zzc(Integer num) {
        if (this.zzc.containsKey(num)) {
            return (zzy) this.zzc.get(num);
        }
        zzy zzyVar = new zzy(this, this.zza, null);
        this.zzc.put(num, zzyVar);
        return zzyVar;
    }

    private final boolean zzd(int i, int i2) {
        zzy zzyVar = (zzy) this.zzc.get(Integer.valueOf(i));
        if (zzyVar == null) {
            return false;
        }
        return zzyVar.zzc().get(i2);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:0|1|(2:2|(2:4|(2:6|7)(1:527))(2:528|529))|8|(3:10|11|12)|16|(6:19|20|21|22|23|(16:(7:25|26|27|28|(1:30)(3:503|(1:505)(1:507)|506)|31|(1:34)(1:33))|(1:36)|37|38|39|40|41|42|(3:44|(1:46)|47)(4:467|(6:468|469|470|471|472|(1:475)(1:474))|(1:477)|478)|48|(1:50)(6:296|(9:298|299|300|301|302|303|304|305|(1:(4:307|(1:309)|310|(1:313)(1:312)))(1:452))(1:466)|361|(10:364|(3:368|(4:371|(5:373|374|(1:376)(1:380)|377|378)(1:381)|379|369)|382)|383|(3:387|(4:390|(3:395|396|397)|398|388)|401)|402|(3:404|(6:407|(2:409|(3:411|412|413))(1:416)|414|415|413|405)|417)|418|(3:427|(8:430|(1:432)|433|(1:435)|436|(3:438|439|440)(1:442)|441|428)|443)|444|362)|450|451)|51|52|(3:190|(4:193|(3:195|196|(8:198|199|(15:201|202|203|204|205|206|207|208|209|210|211|212|213|(3:(9:215|216|217|218|219|(3:221|222|223)(1:266)|224|225|(1:228)(1:227))|(1:230)|231)(2:270|271)|232)(1:292)|233|(4:236|(3:254|255|256)(4:238|239|(2:240|(2:242|(1:244)(2:245|246))(1:253))|(3:248|249|250)(1:252))|251|234)|257|258|259)(1:293))(1:294)|260|191)|295)|54|(6:56|(3:58|(6:61|(11:63|64|65|66|67|68|69|70|71|(3:(9:73|74|75|76|77|78|(1:80)|81|82)|(1:86)|87)(2:142|143)|88)(1:163)|89|(2:90|(2:92|(3:128|129|130)(8:94|(2:95|(4:97|(3:99|(1:101)(1:124)|102)(1:125)|103|(1:1)(2:107|(1:109)(2:110|111)))(2:126|127))|118|(1:120)(1:122)|121|113|114|115))(0))|131|59)|164)|165|(9:168|169|170|171|172|173|(2:175|176)(1:178)|177|166)|186|187)(2:188|189))(1:511))|526|38|39|40|41|42|(0)(0)|48|(0)(0)|51|52|(0)|54|(0)(0)|(5:(0)|(0)|(0)|(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x09b1, code lost:
    
        if (r8 != false) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x088f, code lost:
    
        if (r9 != null) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0868, code lost:
    
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0866, code lost:
    
        if (r9 != null) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x06ef, code lost:
    
        if (r5 == null) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x06b9, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x06b7, code lost:
    
        if (r5 != null) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x02c4, code lost:
    
        if (r5 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x02c6, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x02fc, code lost:
    
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r1);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r13);
        r1 = new androidx.collection.ArrayMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x030b, code lost:
    
        if (r13.isEmpty() == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x030f, code lost:
    
        r3 = r13.keySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x031b, code lost:
    
        if (r3.hasNext() == false) goto L517;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x031d, code lost:
    
        r4 = ((java.lang.Integer) r3.next()).intValue();
        r5 = java.lang.Integer.valueOf(r4);
        r6 = (com.google.android.gms.internal.measurement.zzii) r13.get(r5);
        r7 = (java.util.List) r0.get(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0337, code lost:
    
        if (r7 == null) goto L519;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x033d, code lost:
    
        if (r7.isEmpty() == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0341, code lost:
    
        r5 = r29.zzg;
        r19 = r0;
        r0 = r5.zzp().zzq(r6.zzc(), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0355, code lost:
    
        if (r0.isEmpty() != false) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x03f1, code lost:
    
        r0 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0357, code lost:
    
        r8 = (com.google.android.gms.internal.measurement.zzih) r6.zzcl();
        r8.zzd();
        r8.zzc(r0);
        r0 = r5.zzp().zzq(r6.zza(), r7);
        r8.zzb();
        r8.zza(r0);
        r0 = new java.util.ArrayList();
        r5 = r6.zze().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0386, code lost:
    
        if (r5.hasNext() == false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0388, code lost:
    
        r22 = r3;
        r3 = (com.google.android.gms.internal.measurement.zzhq) r5.next();
        r23 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x03a0, code lost:
    
        if (r7.contains(java.lang.Integer.valueOf(r3.zzb())) != false) goto L526;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x03a2, code lost:
    
        r0.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x03a5, code lost:
    
        r3 = r22;
        r5 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x03aa, code lost:
    
        r22 = r3;
        r8.zzf();
        r8.zze(r0);
        r0 = new java.util.ArrayList();
        r3 = r6.zzg().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x03c3, code lost:
    
        if (r3.hasNext() == false) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x03c5, code lost:
    
        r5 = (com.google.android.gms.internal.measurement.zzik) r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x03d7, code lost:
    
        if (r7.contains(java.lang.Integer.valueOf(r5.zzb())) != false) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x03d9, code lost:
    
        r0.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x03dd, code lost:
    
        r8.zzh();
        r8.zzg(r0);
        r1.put(java.lang.Integer.valueOf(r4), (com.google.android.gms.internal.measurement.zzii) r8.zzbc());
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x03fc, code lost:
    
        r0 = r19;
        r3 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x03f5, code lost:
    
        r19 = r0;
        r22 = r3;
        r1.put(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0402, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x02d0, code lost:
    
        if (r5 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x02f9, code lost:
    
        if (r5 == null) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0226, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0227, code lost:
    
        r20 = "audience_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x022e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x022f, code lost:
    
        r20 = "audience_id";
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x022a, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x022b, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0154, code lost:
    
        if (r5 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x0156, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0178, code lost:
    
        if (r5 == null) goto L58;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0a6f  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x05b9  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01bb A[Catch: SQLiteException -> 0x0226, all -> 0x0a75, TRY_LEAVE, TryCatch #11 {all -> 0x0a75, blocks: (B:42:0x01b5, B:44:0x01bb, B:467:0x01c9, B:468:0x01ce, B:470:0x01d8, B:471:0x01e8, B:472:0x0210, B:487:0x01f5, B:490:0x0209, B:481:0x0232), top: B:41:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:467:0x01c9 A[Catch: SQLiteException -> 0x0226, all -> 0x0a75, TRY_ENTER, TryCatch #11 {all -> 0x0a75, blocks: (B:42:0x01b5, B:44:0x01bb, B:467:0x01c9, B:468:0x01ce, B:470:0x01d8, B:471:0x01e8, B:472:0x0210, B:487:0x01f5, B:490:0x0209, B:481:0x0232), top: B:41:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x079f  */
    /* JADX WARN: Type inference failed for: r0v192, types: [android.content.ContentValues] */
    /* JADX WARN: Type inference failed for: r4v29, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v65, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r5v66 */
    /* JADX WARN: Type inference failed for: r5v67, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.util.List zzb(java.lang.String r30, java.util.List r31, java.util.List r32, java.lang.Long r33, java.lang.Long r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzad.zzb(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long, boolean):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    protected final boolean zzbb() {
        return false;
    }
}
