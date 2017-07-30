--This module is based on the SimpleSynth module
--https://github.com/tidalcycles/tidal-midi/blob/master/doc/synth-mapping.md
--After build problems, trying to base on VolcaKeys module 

module Sound.Tidal.MIDI.BristolBME700 where

import Sound.Tidal.MIDI.Control
import Sound.Tidal.Params

							--From Tightrope/scripts/bristolmidisurfaces/BME700ccmaps.txt
							
bme700Controller :: ControllerShape
bme700Controller =
  ControllerShape
  { controls =
      [
		mCC m1ts_p 20,	--MOD1 Tri/Squ switch (127 == sq)
		mCC m1cy_p 21,	--MOD1 Cycle
		--mCC vcor 22,	--VCO Ratio
		mCC m2ts_p 23,
		mCC envl_p 24,
		mCC vbx_p 25,
		mCC sido_p 26,
		mCC mots_p 27,
		
		mCC vcogt_p 28,
		mCC vcor_p 29,
		mCC vcov_p 30,
		mCC vcos_p 31,
		mCC vcog_p 32,
		mCC vcoma_p 33,
		mCC vcope_p 34,
		mCC vct8_p 35,
		mCC vct4_p 36,
		mCC mxr_p 37,
		
		mCC rfsf_p 38,
		mCC rff1_p 39,
		mCC rff2_p 40,
		mCC rff4_p 41,
		mCC rff8_p 42,
		mCC rff16_p 43,
		
		mCC e1m_p 44,
		mCC e1r_p 45,
		mCC e1f_p 46,
		mCC e2m_p 47,
		mCC e2r_p 48,
		mCC e2f_p 49,
		
		mCC vcfb_p 53,
		mCC vcfe_p 54,
		mCC vcfmm_p 55,
		mCC vcftrsq_p 56,
		mCC vcfm12_p 57,
		mCC vcfkm_p 58
			
      ],
     latency = 0.01
   }
                       
bme700 = toShape bme700Controller


(m1ts,	   m1ts_p)     = pF "m1ts"     (Just 0)
(m1cy,	   m1cy_p)     = pF "m1cy"     (Just 0)
(m2ts,	   m2ts_p)     = pF "m2ts"     (Just 0)
(envl,	   envl_p)     = pF "envl"     (Just 0)
(vbx,	   vbx_p )     = pF "vbx"      (Just 0)
(sido,	   sido_p)		= pF "sido"		(Just 0)
(mots,	   mots_p)		= pF "mots"		(Just 0)

(vcogt,	   vcogt_p)		= pF "vcogt"		(Just 0)
(vcor,	   vcor_p)		= pF "vcor"		(Just 0)
(vcov,	   vcov_p)		= pF "vcov"		(Just 0)
(vcos,	   vcos_p)		= pF "vcos"		(Just 0)
(vcog,	   vcog_p)		= pF "vcog"		(Just 0)
(vcoma,	   vcoma_p)		= pF "vcoma"	(Just 0)
(vcope,	   vcope_p)		= pF "vcope"	(Just 0)
(vct8,	   vct8_p)		= pF "vct8"		(Just 0)
(vct4,	   vct4_p)		= pF "vct4"		(Just 0)
(mxr,	   mxr_p)		= pF "mxr"		(Just 0)

(rfsf,	   rfsf_p)		= pF "rfsf"		(Just 0)
(rff1,	   rff1_p)		= pF "rff1"		(Just 0)
(rff2,	   rff2_p)		= pF "rff2"		(Just 0)
(rff4,	   rff4_p)		= pF "rff4"		(Just 0)
(rff8,	   rff8_p)		= pF "rff8"		(Just 0)
(rff16,	   rff16_p)		= pF "rff16"	(Just 0)

(e1m,	   e1m_p)		= pF "e1m"		(Just 0)
(e1r,	   e1r_p)		= pF "e1r"		(Just 0)
(e1f,	   e1f_p)		= pF "e1f"		(Just 0)
(e2m,	   e2m_p)		= pF "e2m"		(Just 0)
(e2r,	   e2r_p)		= pF "e2r"		(Just 0)
(e2f,	   e2f_p)		= pF "e2f"		(Just 0)

(vcfb,	   vcfb_p)		= pF "vcfb"		(Just 0)
(vcfe,	   vcfe_p)		= pF "vcfe"		(Just 0)
(vcfmm,	   vcfmm_p)		= pF "vcfmm"	(Just 0)
(vcftrsq,  vcftrsq_p)	= pF "vcftrsq"	(Just 0)
(vcfm12,	vcfm12_p)	= pF "vcfm12"		(Just 0)
(vcfkm,	   vcfkm_p)		= pF "vcfkm"		(Just 0)





