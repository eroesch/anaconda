
anaconda::channel{'bioconda': }

anaconda::env{'test3':
  anaconda_version => '4.4.0',
  language         => 'python',
  version          => '3.6',
  exec_timeout     => '900',
  require          => Anaconda::Channel['bioconda'],
}

Anaconda::Package{['prinseq']:
  env => 'test3'
}

Anaconda::Package{['numpy']:
  env => 'test3'
}